package com.jeonghwapark.portfolio.repository.CompanyRepository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.portfolio.model.ComVO;

@Repository
public class CompanyDao {
	@Autowired
	SqlSession sqlSession;
	
	public ComVO getCompany() {
		return sqlSession.selectOne("company.getCompany");
	}
	
	public void setCompany(ComVO cvo) {
		sqlSession.update("company.setCompany", cvo);
	}
}
