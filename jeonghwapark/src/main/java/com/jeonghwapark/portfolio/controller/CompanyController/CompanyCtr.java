package com.jeonghwapark.portfolio.controller.CompanyController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeonghwapark.portfolio.model.ComVO;
import com.jeonghwapark.portfolio.service.CompanyService.CompanySrv;

@Controller
@RequestMapping("/company")
public class CompanyCtr {
	@Autowired
	CompanySrv comSrv;
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	@ResponseBody
	public ComVO getCompany() {
		ComVO cvo = comSrv.getCompany();
		
		return cvo;
	}
	
	@RequestMapping(value = "/grp_company", method = RequestMethod.POST)
	public void setCompnay(@ModelAttribute ComVO cvo) {
		comSrv.setCompany(cvo);
	}
}
