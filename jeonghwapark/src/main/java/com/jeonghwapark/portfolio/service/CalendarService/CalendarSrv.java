package com.jeonghwapark.portfolio.service.CalendarService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.portfolio.model.CalVO;
import com.jeonghwapark.portfolio.repository.CalendarDao.CalendarDao;

@Service
public class CalendarSrv {
	@Autowired
	CalendarDao calDao;
	
	public void setCal(CalVO cvo) {
		calDao.setCal(cvo);
	}
	
	public List<CalVO> getCal() {
		return calDao.getCal();
	}
}
