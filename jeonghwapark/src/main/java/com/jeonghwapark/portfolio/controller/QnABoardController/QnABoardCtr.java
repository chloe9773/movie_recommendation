package com.jeonghwapark.portfolio.controller.QnABoardController;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jeonghwapark.portfolio.model.ArticleVO;
import com.jeonghwapark.portfolio.model.BoardVO;
import com.jeonghwapark.portfolio.model.QuestionVO;
import com.jeonghwapark.portfolio.pager.Pager;
import com.jeonghwapark.portfolio.service.BoardService.ArticleService;
import com.jeonghwapark.portfolio.service.QnAService.QnAService;

@Controller
@RequestMapping("qna")
public class QnABoardCtr {
	
	@Autowired
	QnAService qnaSrv;
	
	
	@RequestMapping("")
	public ModelAndView getQnABoard(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "") String words, 
			@RequestParam(defaultValue = "qTitle") String searchOpt) {
		
		int count = qnaSrv.getQuestionTotalCount(words, searchOpt);
		
		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<QuestionVO> list = qnaSrv.getQuestionList(start, end, words, searchOpt);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("searchOpt", searchOpt);
		mav.addObject("words", words);
		mav.addObject("start", start);
		mav.addObject("end", end);
		mav.addObject("blockBegin", pager.getBlockBegin());
		mav.addObject("blockEnd", pager.getBlockEnd());
		mav.addObject("curBlock", pager.getCurBlock());
		mav.addObject("totalBlock", pager.getTotBlock());
		mav.addObject("prevPage", pager.getPrevPage());
		mav.addObject("nextPage", pager.getNextPage());
		mav.addObject("totalPage", pager.getTotPage());
		mav.addObject("curPage", pager.getCurPage());
		mav.addObject("selected", pager.getCurPage());
		
		mav.setViewName("admin/board/yf_admin_board_qna");
		
		return mav;
	}
	
	@RequestMapping("/yf_qna_view")
	public ModelAndView getQnAView(@ModelAttribute QuestionVO vo) {
		QuestionVO qvo = qnaSrv.getQuestionOne(vo);
		//System.out.println(qvo.getQid());
		int count = qnaSrv.getAnsCount(qvo.getQid());
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("question", qvo);
		mav.addObject("count", count);
		mav.setViewName("admin/board/yf_admin_board_qna_view");
		
		return mav;
	}
	
	@RequestMapping(value = "/yf_question_reply", method = RequestMethod.GET)
	public ModelAndView getQuestionReply(@ModelAttribute QuestionVO vo) {
		QuestionVO qvo = qnaSrv.getQuestionOne(vo);
		//BoardVO bvo = qnaSrv.getBoardOne(vo.getBoardCode());
		
		ModelAndView mav = new ModelAndView();
		
		if( qvo != null ) {
			mav.addObject("question", qvo);
			mav.setViewName("admin/board/yf_admin_board_qna_reply");
		}

		return mav;
	}
	
	
	@RequestMapping(value = "/yf_question_reply", method=RequestMethod.POST)
	public String setQuestionReply(@ModelAttribute QuestionVO vo, @RequestPart MultipartFile files) throws Exception {
		if (files.isEmpty()) { 
			qnaSrv.setQuestionReply(vo);
			
		} else {
			String fileName = files.getOriginalFilename();
			String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
			File destinationFile;
			String destinationFileName;
			String fileUrl = "c://upload//fileUpload//";

			do {
				destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension;
				destinationFile = new File(fileUrl + destinationFileName);
			} while (destinationFile.exists());

				destinationFile.getParentFile().mkdirs();
				files.transferTo(destinationFile);
	
				vo.setFileName(destinationFileName);
				vo.setFileOriName(fileName);
				vo.setFileUrl(fileUrl);
				qnaSrv.setQuestionReply(vo);
		}
		
		return "redirect:/qna?qid="+vo.getQid();
	}
	
	@RequestMapping("/yf_question_delete")
	@ResponseBody
	public String articleDelete(@ModelAttribute QuestionVO qvo) {
		int qid = qvo.getQid();
		
		int cntComment = qnaSrv.getAnsCount(qid);
		
		if (cntComment > 0) {
			qnaSrv.commentDelete(qid);
		} 
		
		qnaSrv.articleDelete(qid);
		
		return "success";
	}
	
	@RequestMapping("/yf_question_modify")
	public void getModify(@ModelAttribute QuestionVO vo) {
		
	}
	
	@RequestMapping("/yf_question_modify_checkAuth")
	@ResponseBody
	public String checkAuth(@ModelAttribute QuestionVO qid, String currUser) {
		String msg = "";
		String writer = qnaSrv.getQuestionOne(qid).getqWriter();
		
		if (writer.equals(currUser)) {
			msg = "success";
		} else {
			msg = "failure";
		}
		
		return msg;
	}
	
	@RequestMapping(value = "/yf_question_download", method = RequestMethod.GET)
	public void fileDown(@ModelAttribute QuestionVO qvo, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8"); // 한글
		QuestionVO vo = qnaSrv.getQuestionOne(qvo);

		try {
			String fileUrl = vo.getFileUrl();
			fileUrl += "/";
			String savePath = fileUrl; // 파일 경로
			String fileName = vo.getFileName();

			String oriFileName = vo.getFileOriName();
			InputStream in = null;
			OutputStream os = null;
			File file = null;
			boolean skip = false;
			String client = "";

			try {
				file = new File(savePath, fileName);
				in = new FileInputStream(file); //파일 읽어옴
			} catch (FileNotFoundException fe) {
				skip = true; //파일 없을시 (?)
			}

			client = request.getHeader("User-Agent");

			response.reset();
			response.setContentType("application/octet-stream"); //헤더 추가 8비트 바이너리 배열을 의미하며 http나 이메일상에서 application 형식이 지정되지 않았거나 형식을 모를때 사용합니다 단지 바이너리 데이터로서 다운로드만 가능하게 처리
			response.setHeader("Content-Description", "JSP Generated Data"); //헤더 추가

			if (!skip) {
				// IE로 실행할 경우를 위한 인코딩
				if (client.indexOf("MSIE") != -1) {
					response.setHeader("Content-Disposition", "attachment; filename=\""
							+ java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
					// IE 11 이상에서
				} else if (client.indexOf("Trident") != -1) {
					response.setHeader("Content-Disposition", "attachment; filename=\""
							+ java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
				} else {
					// IE 이외의 버전에서 한글이 깨지는것을 방지하기 위한 인코딩
					response.setHeader("Content-Disposition",
							"attachment; filename=\"" + new String(oriFileName.getBytes("UTF-8"), "ISO8859_1") + "\"");
					response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
				}
				response.setHeader("Content-Length", "" + file.length());
				os = response.getOutputStream();
				byte b[] = new byte[(int) file.length()];
				int leng = 0;
				while ((leng = in.read(b)) > 0) {
					os.write(b, 0, leng);
				}
			} else {
				response.setContentType("text/html;charset=UTF-8");
				System.out.println("<script language='javascript'>alert('�뙆�씪�쓣 李얠쓣 �닔 �뾾�뒿�땲�떎');history.back();</script>");
			}
			in.close();
			os.close();
		} catch (Exception e) {
			System.out.println("ERROR : " + e.getMessage());
		}

	}
}
