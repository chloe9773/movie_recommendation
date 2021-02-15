package com.jeonghwapark.portfolio.controller.CalendarCtr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeonghwapark.portfolio.model.CalVO;
import com.jeonghwapark.portfolio.service.CalendarService.CalendarSrv;

@Controller
@RequestMapping("/calendar")
public class CalendarCtr {
	@Autowired
	CalendarSrv calSrv;
	
	@RequestMapping("")
	public String getCalendar() {
		return "admin/calendar/yf_admin_calendar";
	}
	
	@RequestMapping("/yf_calendar_add")
	@ResponseBody
	public void setCal(@ModelAttribute CalVO cvo) {
		System.out.println(cvo.getCalContent());
		calSrv.setCal(cvo);
	}
	
	@RequestMapping("/yf_calendar_list")
	@ResponseBody
	public List<CalVO> getCal() {
		List<CalVO> list = calSrv.getCal();
		
		return list;
	}
}
