package com.jeonghwapark.portfolio.controller.MypageCotroller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jeonghwapark.portfolio.model.ArticleVO;
import com.jeonghwapark.portfolio.model.BoardVO;
import com.jeonghwapark.portfolio.pager.Pager;
import com.jeonghwapark.portfolio.service.BoardService.ArticleService;

@Controller
@RequestMapping("/mypage")
public class MypageCtr {
	@Autowired
	ArticleService articleSrv;
	
	@RequestMapping(value = "")
	public ModelAndView getMypage(HttpSession httpSession) {
		int start = 0;
		int end = 5;
		
		String currUser = (String) httpSession.getAttribute("mUserName");
		
		List<ArticleVO> list = articleSrv.getUserArticleList(currUser, start, end);
		int count = articleSrv.getUserArticleCnt(currUser);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("articles", list);
		mav.addObject("count", count);
		mav.setViewName("yf_user/yf_user_mypage");
		
		return mav;
	}
	
	@RequestMapping(value = "/yf_user_myarticle")
	public ModelAndView getMyArticle(@RequestParam(defaultValue = "1") int curPage, HttpSession httpSession) {
		String currUser = (String) httpSession.getAttribute("mUserName");
		int aCount = articleSrv.getUserArticleCnt(currUser);
		int cCount = articleSrv.getUserCommentCnt(currUser);
		
		Pager pager = new Pager(aCount, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<ArticleVO> list = articleSrv.getUserArticleList(currUser, start, end);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("articles", list);
		mav.addObject("aCount", aCount);
		mav.addObject("cCount", cCount);
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
		mav.setViewName("yf_user/yf_user_myArticle");
		
		return mav;
	}
	
	@RequestMapping("/mycomments")
	@ResponseBody
	public void getMyComments() {
		
	}
}
