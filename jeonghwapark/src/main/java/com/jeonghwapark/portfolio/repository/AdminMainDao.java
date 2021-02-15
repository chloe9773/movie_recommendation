package com.jeonghwapark.portfolio.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.portfolio.model.QuestionVO;

@Repository
public class AdminMainDao {
	@Autowired
	SqlSession sqlSession;
	
	public List<QuestionVO> getUnansweredQuestion() {
		return sqlSession.selectList("auth.getUnansweredQuestion");
	}
	
	public int getCountUnansweredQuestion() {
		return sqlSession.selectOne("auth.getCountUnansweredQuestion");
	}
	
}
