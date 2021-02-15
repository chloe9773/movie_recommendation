package com.jeonghwapark.portfolio.repository;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.portfolio.model.MemberVO;

@Repository
public class LoginChkDao {
	@Autowired
	SqlSession sql;
	
	public MemberVO loginCheck(MemberVO mvo) {
		return sql.selectOne("login.loginChk", mvo);
	}
	
	public void logout(HttpSession httpSession) {}
}
