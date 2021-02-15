package com.jeonghwapark.portfolio.controller.BoardController;

import java.io.File;
import java.io.IOException;
import java.util.List;

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
import com.jeonghwapark.portfolio.service.BoardService.BoardSrv;

@Controller
@RequestMapping("/article")
public class ArticleCtr {
	@Autowired
	ArticleService articleSrv;
	
	@Autowired
	BoardSrv boardSrv;
	
	@RequestMapping("")
	public ModelAndView getArticleList(@RequestParam(defaultValue = "1") int curPage, @RequestParam(defaultValue = "") String words, 
			@RequestParam(defaultValue = "title") String searchOpt, @RequestParam(defaultValue="") String boardCode) {
		
		int count = 0;
		
		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<ArticleVO> list = null;
		
		if (boardCode == "") {
			//System.out.println("no code");
			count = articleSrv.getArticleTotalCount(words, searchOpt, boardCode);
			list = articleSrv.getTotalArticleList(start, end, words, searchOpt, boardCode);
		} else {
			//System.out.println(boardCode);
			count = articleSrv.getArticleCount(words, searchOpt, boardCode);
			list = articleSrv.getArticleList(start, end, words, searchOpt, boardCode);
		}

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
		mav.addObject("boardCode", boardCode);
		mav.setViewName("yf_user/yf_user_board");
		 
		return mav;
	}
	
	@RequestMapping(value = "/yf_article_insert", method = RequestMethod.GET)
	public ModelAndView getArticleInsert(@RequestParam(defaultValue = "")String boardCode) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("boardCode", boardCode);
		mav.setViewName("yf_user/yf_user_article_insert");
		
		return mav;
	}
	
	@RequestMapping(value = "/yf_article_insert", method = RequestMethod.POST)
	public String setArticleInsert(@ModelAttribute ArticleVO avo, @RequestPart MultipartFile files, @RequestParam String boardCode) throws IllegalStateException, IOException {
		avo.setBoardCode(boardCode);
		
		BoardVO division = articleSrv.getBoardOne(boardCode);
		avo.setDivision(division.getBoardDivision());
		
		if (files.isEmpty()) { 
			articleSrv.setArticle(avo);
			
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
	
				avo.setFileName(destinationFileName);
				avo.setFileOriName(fileName);
				avo.setFileUrl(fileUrl);
			articleSrv.setArticle(avo);
		}
		
		return "redirect:/article?boardCode=" + avo.getBoardCode();
	}
	
	@RequestMapping(value = "/yf_article_view", method = RequestMethod.GET)
	public ModelAndView getArticleView(@ModelAttribute ArticleVO vo) {
		ArticleVO avo = articleSrv.getArticleOne(vo);
		BoardVO bvo = articleSrv.getBoardOne(avo.getBoardCode());
		ModelAndView mav = new ModelAndView();
		
		articleSrv.hitUp(vo);
		
		mav.addObject("article", avo);
		mav.addObject("boardCode", vo.getBoardCode());
		mav.addObject("boardTitle", bvo.getBoardTitle());
		mav.addObject("boardRead", bvo.getBoardRead());
		
		mav.setViewName("yf_user/yf_user_article_view");
		
		return mav;
	}
	
	@RequestMapping("/yf_article_like")
	@ResponseBody
	public void getArticleLike(int aid) {
		//System.out.println(aid);
	}
}
