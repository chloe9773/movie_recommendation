package com.jeonghwapark.portfolio.service;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.portfolio.model.MemberVO;
import com.jeonghwapark.portfolio.repository.LoginChkDao;

@Service
public class LoginChkSrv {
	@Autowired
	LoginChkDao loginChkDao;
	
	public MemberVO loginCheck(MemberVO mvo, HttpSession httpSession) {
		MemberVO result = loginChkDao.loginCheck(mvo);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		if( result != null ) {
			httpSession.setAttribute("mid", result.getMid());
			httpSession.setAttribute("mEmail", result.getmEmail());
			httpSession.setAttribute("mUserName", result.getmUserName());
			httpSession.setAttribute("mName", result.getmName());
			httpSession.setAttribute("mLevel", result.getmLevel());
			httpSession.setAttribute("mRegdate", sdf.format(result.getmRegdate()));
			httpSession.setAttribute("mPosition", result.getmPosition());
		}
		
		return result;
	}
	
	public void logout(HttpSession httpSession) {
		httpSession.invalidate();		
	}
}
