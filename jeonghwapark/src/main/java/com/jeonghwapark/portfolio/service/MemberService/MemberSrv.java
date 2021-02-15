package com.jeonghwapark.portfolio.service.MemberService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.portfolio.model.MemberVO;
import com.jeonghwapark.portfolio.repository.MemberRepository.MemberDao;

@Service
public class MemberSrv {
	@Autowired
	MemberDao mDao;
	
	public void setRegisterOne(MemberVO mvo) {
		mDao.setRegisterOne(mvo);
	}
	
	public int chkDuplicatedEmail(String email) {
		return mDao.chkDuplicatedEmail(email);
	}
	
	public MemberVO getMemberOne(MemberVO mvo) {
		return mDao.getMemberOne(mvo);
	}
	
	public MemberVO getMemberOneInfo(int mid) {
		//System.out.println(mDao.getMemberOneInfo(mid));
		return mDao.getMemberOneInfo(mid);
	}
	
	public List<MemberVO> getMemberListAll(int start, int end, String words, String searchOpt) {
		return mDao.getMemberListAll(start, end, words, searchOpt);
	}
	
	public int getMemberCount(String searchOpt, String words) {
		return mDao.getMemberCount(searchOpt, words);
	}
}
