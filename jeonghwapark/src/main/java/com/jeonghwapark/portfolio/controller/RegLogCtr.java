package com.jeonghwapark.portfolio.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jeonghwapark.portfolio.model.AuthorityVO;
import com.jeonghwapark.portfolio.model.MemberVO;
import com.jeonghwapark.portfolio.service.LoginChkSrv;
import com.jeonghwapark.portfolio.service.CompanyService.CompanySrv;
import com.jeonghwapark.portfolio.service.MemberService.MemberSrv;

@Controller
public class RegLogCtr {
	
	@Autowired
	MemberSrv mSrv;
	
	@Autowired
	LoginChkSrv lSrv;
	
	@Autowired
	CompanySrv comSrv;
	
	@RequestMapping("")
	public String yf_user_main() {
		return "yf_user_main";
	}
	
	@RequestMapping(value="/yf_user_login", method=RequestMethod.GET)
	public String getLogin() {
		return "yf_user_login";
	}
	
	@RequestMapping(value="/yf_user_login", method=RequestMethod.POST)
	public ModelAndView setLogin(@ModelAttribute MemberVO mvo, HttpSession httpSession) {
		ModelAndView mav = new ModelAndView();
		//auth 설정 나중에 꼭 하기
		
		if (mSrv.getMemberOne(mvo) != null) {
			
			int userLevel = mSrv.getMemberOne(mvo).getmLevel();
			int basicLevel = comSrv.getCompany().getComAuth();
			int auth = 10;
			
			AuthorityVO avo = new AuthorityVO();
			
			if (userLevel > auth) {
				lSrv.loginCheck(mvo, httpSession);
				mav.setViewName("redirect:/admin");
			} else {
				lSrv.loginCheck(mvo, httpSession);
				if (userLevel < basicLevel) {// 신규회원 일 때 영화 평점창으로
					mav.setViewName("redirect:/yf_user/yf_user_rate");
				} else if(userLevel > basicLevel) {
					mav.setViewName("redirect:/admin");
				} else {
					mav.setViewName("redirect:/yf_user");
				}
			}
			
		} else {
			//System.out.println("실패");
			mav.addObject("msg", "failure");
			mav.setViewName("/yf_user_login");
		}
		return mav;
	}
	
	@RequestMapping(value="/yf_user_logout", method=RequestMethod.POST)
	@ResponseBody
	public String yfLogout(HttpSession httpSession) {
		lSrv.logout(httpSession);
		
		return "success";
	}
	
	
	@RequestMapping(value="/yf_user_registration", method=RequestMethod.GET)
	public String getRegistration() {
		return "yf_user_registration";
	}
	
	@RequestMapping(value="/yf_user_chk", method=RequestMethod.POST)
	@ResponseBody
	public String chkDuplicatedEmail(@RequestParam("mEmail") String emailAddress) {
		//System.out.println(emailAddress);
		String chk = null;
		int result = mSrv.chkDuplicatedEmail(emailAddress);
		
		if (result > 0) {
			chk = "failure";
		} else {
			chk = "success";
		}
		
		return chk;
	}
	
	@RequestMapping(value="/yf_user_registration", method=RequestMethod.POST)
	public String setRegistration(@ModelAttribute MemberVO mvo) {
		mSrv.setRegisterOne(mvo);
		return "redirect:/yf_user_login";
	}
}
