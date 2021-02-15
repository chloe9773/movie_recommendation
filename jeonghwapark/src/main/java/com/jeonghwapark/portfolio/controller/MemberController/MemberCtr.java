package com.jeonghwapark.portfolio.controller.MemberController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jeonghwapark.portfolio.model.MemberVO;
import com.jeonghwapark.portfolio.pager.Pager;
import com.jeonghwapark.portfolio.service.MemberService.MemberSrv;

@Controller
@RequestMapping("/member")
public class MemberCtr {
	@Autowired
	MemberSrv memberSrv;
	
	@RequestMapping("")
	public ModelAndView getMember(@RequestParam(defaultValue = "") String words, @RequestParam(defaultValue = "mUserName") String searchOpt, @RequestParam(defaultValue = "1") int curPage) {
		int count = memberSrv.getMemberCount(searchOpt, words);
		
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		
		List<MemberVO> list = memberSrv.getMemberListAll(start, end, words, searchOpt);
		
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
		mav.setViewName("admin/member/yf_admin_memberList");
		
		return mav;
	}
	
	@RequestMapping(value = "/yf_member_get", method = RequestMethod.POST)
	@ResponseBody
	public MemberVO getMemberOneInfo(int mid) {
		//System.out.println(mid);
		return memberSrv.getMemberOneInfo(mid);
	}
}
