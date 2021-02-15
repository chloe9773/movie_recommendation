package com.jeonghwapark.portfolio.service.CompanyService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.portfolio.model.ComVO;
import com.jeonghwapark.portfolio.repository.CompanyRepository.CompanyDao;

@Service
public class CompanySrv {
	@Autowired
	CompanyDao comDao;
	
	public ComVO getCompany() {
		return comDao.getCompany();
	}
	
	public void setCompany(ComVO cvo) {
		comDao.setCompany(cvo);
	}
}
