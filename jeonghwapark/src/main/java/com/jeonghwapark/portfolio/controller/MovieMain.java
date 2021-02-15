package com.jeonghwapark.portfolio.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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

import com.jeonghwapark.portfolio.model.MemberVO;
import com.jeonghwapark.portfolio.model.MovieVO;
import com.jeonghwapark.portfolio.model.QArticleVO;
import com.jeonghwapark.portfolio.model.QuestionVO;
import com.jeonghwapark.portfolio.service.ContentInsertSrv;
//import com.jeonghwapark.portfolio.service.MovieListSrv;
import com.jeonghwapark.portfolio.service.MovieListSrv;
import com.jeonghwapark.portfolio.service.MovieService.NaverApiSrv;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/yf_user")
public class MovieMain {
	@Autowired
	ContentInsertSrv ciSrv;
	
	@Autowired
	NaverApiSrv apiSrv;
	
	private final MovieListSrv movieListSrv = new MovieListSrv();
	
	@RequestMapping(value = "", method= RequestMethod.GET)
	public String getMovieMain() {
		return "yf_user/yf_user_movie_main";
	}
	
	@RequestMapping(value = "/footer")
	public ModelAndView getFooter() {
//		List<ComVO>
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("yf_user/user_incluse/USER_MOVIE_FOOTER");
		
		return mav;
	}
	
	@RequestMapping(value = "/yf_user_rate", method= RequestMethod.GET)
	public String getMovieRate() throws Exception {
		//정규식 사용..? 전체출력
		//apiSrv.search("a");
		return "yf_user/yf_user_rate";
	}
	
	@RequestMapping(value = "/yf_user_board", method= RequestMethod.GET)
	public void getUserCommunity() {
		//return "/yf_user/yf_user_board";
	}
	
	@RequestMapping("/yf_board_rate")
	public String getMovieRateBoard() {
		return "yf_user/yf_user_board_review";
	}
	
	@RequestMapping(value = "/yf_user_article_insert", method= RequestMethod.GET)
	public void getUserWrite() {
		//return "/yf_user/yf_user_board";
	}
	
	@RequestMapping(value = "/yf_user_article_insert", method= RequestMethod.POST)
	public void setUserWrite(QuestionVO qvo) {
		//System.out.println(qvo.getqWriter());
	}
	
	@RequestMapping(value = "/yf_user_contact", method= RequestMethod.GET)
	public ModelAndView getContact(HttpSession httpSession) {
		MemberVO mvo = new MemberVO();
		mvo.setmUserName((String) httpSession.getAttribute("mUserName"));
		String mUserName = mvo.getmUserName();
		Map<String, String> map = new HashMap<String, String>();
		map.put("mUserName", mUserName);
		
		List<QuestionVO> list = ciSrv.getQuestionList(map);	
		ModelAndView mav = new ModelAndView();
		
		if (list.size() >= 1) {
			mav.addObject("list", list);
			mav.addObject("count", list.size());
		} else {
			mav.addObject("count", 0);
		}
		
		mav.setViewName("yf_user/yf_user_contact");
		
		return mav;
	}
	
	@RequestMapping(value = "/yf_user_contact_modify", method= RequestMethod.GET)
	public ModelAndView modifyContact(@ModelAttribute QuestionVO vo) {
		QuestionVO qvo = ciSrv.getArticleOne(vo);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("modifyArticle", qvo);
		mav.setViewName("yf_user/yf_user_contact_modify");
		
		return mav;
	}
	
	@RequestMapping(value = "/yf_user_contact_modify", method= RequestMethod.POST)
	public String modifyContactUpdate(@ModelAttribute QuestionVO qvo) {
		ciSrv.updateContact(qvo);
		
		return "redirect:/yf_user/yf_user_contact";
	}
	
	@RequestMapping(value = "/yf_user_contact", method= RequestMethod.POST)
	public String setContact(@ModelAttribute QuestionVO qvo, @RequestPart MultipartFile files) throws IllegalStateException, IOException {
		
		if (files.isEmpty()) { 
			ciSrv.setContact(qvo);
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
	
				qvo.setFileName(destinationFileName);
				qvo.setFileOriName(fileName);
				qvo.setFileUrl(fileUrl);
				ciSrv.setContact(qvo);
		}
		
		
//		Map<String, String> map = new HashMap<String, String>();
//		map.put("qWriter", qvo.getqWriter());
//		
//		int exist = ciSrv.chkWriter(map);
//		int qid = ciSrv.getID(qvo);
//		
//		if (exist > 1) {
//			ciSrv.insertQnumTbl(qvo.getqWriter(), qid);
//			ciSrv.checkID(qid);
//		} else {
//			//ciSrv.createTbl(qvo.getqWriter());
//			ciSrv.insertQnumTbl(qvo.getqWriter(), qid);
//			ciSrv.checkID(qid);
//		}
	
		return "redirect:/yf_user/yf_user_contact_finish";
	}
	
	@RequestMapping(value = "/yf_user_contact_finish", method= RequestMethod.GET)
	public void finContact() {
		//return "/yf_user/yf_user_board";
	}
	
	@RequestMapping(value = "/yf_user_contact_write", method= RequestMethod.GET)
	public void getContactWrite() {
		//return "/yf_user/yf_user_board";
	}
	
	@RequestMapping(value = "/yf_user_contact_delete", method= RequestMethod.POST)
	public String deleteContact(QuestionVO qid) {
		QuestionVO qvo = ciSrv.getArticleOne(qid);
		
		ciSrv.deleteMyContact(qvo);
		ciSrv.deleteContact(qvo);
		
		int count = ciSrv.getCount(qvo);
		
		if (count == 0) {
			//ciSrv.dropTbl(qvo);
		}
		
		return "success";
	}
}
