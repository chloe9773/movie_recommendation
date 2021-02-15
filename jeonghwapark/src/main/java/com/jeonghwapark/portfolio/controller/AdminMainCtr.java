package com.jeonghwapark.portfolio.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jeonghwapark.portfolio.model.MemberVO;
import com.jeonghwapark.portfolio.model.QuestionVO;
import com.jeonghwapark.portfolio.service.AdminMainSrv;
import com.jeonghwapark.portfolio.service.MemberService.MemberSrv;

@Controller
@RequestMapping("/admin")
public class AdminMainCtr {
	
	@Autowired
	AdminMainSrv adminMainSrv;
	
	@RequestMapping(value= "", method= RequestMethod.GET)
	public String getAdminMain() {
		return "admin/admin_main";
	}
	
	@RequestMapping(value = "/top", method = RequestMethod.POST)
	@ResponseBody
	public List<QuestionVO> getAlarm() {
		List<QuestionVO> list = adminMainSrv.getUnansweredQuestion();
		
		return list;
	}
	
	@RequestMapping(value = "/top", method = RequestMethod.GET)
	@ResponseBody
	public int getAlarmCount() {
		//List<QuestionVO> list = adminMainSrv.getCountUnansweredQuestion();
		
		return adminMainSrv.getCountUnansweredQuestion();
	}
}
