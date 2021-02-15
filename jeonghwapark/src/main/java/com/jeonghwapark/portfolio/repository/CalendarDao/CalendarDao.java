package com.jeonghwapark.portfolio.repository.CalendarDao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.portfolio.model.CalVO;

@Repository
public class CalendarDao {
	@Autowired
	SqlSession sqlSession;
	
	public void setCal(CalVO cvo) {
		sqlSession.insert("calendar.setCal", cvo);
	}
	
	public List<CalVO> getCal() {
		return sqlSession.selectList("calendar.getCal");
	}
}
