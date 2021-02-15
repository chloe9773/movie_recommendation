package com.jeonghwapark.portfolio.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.portfolio.model.QuestionVO;
import com.jeonghwapark.portfolio.repository.AdminMainDao;

@Service
public class AdminMainSrv {
	@Autowired
	AdminMainDao adminMainDao;
	
	public List<QuestionVO> getUnansweredQuestion() {
		return adminMainDao.getUnansweredQuestion();
	}
	
	public int getCountUnansweredQuestion() {
		return adminMainDao.getCountUnansweredQuestion();
	}
}
