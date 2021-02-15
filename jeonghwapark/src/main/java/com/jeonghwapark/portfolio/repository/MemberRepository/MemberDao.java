package com.jeonghwapark.portfolio.repository.MemberRepository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.portfolio.model.MemberVO;

@Repository
public class MemberDao {
	@Autowired
	SqlSession sql;
	
	public void setRegisterOne(MemberVO mvo) {
		sql.insert("reglog.setRegisterOne", mvo);
	}
	
	public int chkDuplicatedEmail(String email) {
		return sql.selectOne("reglog.chkDuplicatedEmail", email);
	}
	
	public MemberVO getMemberOne(MemberVO mvo) {
		return sql.selectOne("reglog.getMemberOne", mvo);
	}
	
	public MemberVO getMemberOneInfo(int mid) {
		return sql.selectOne("member.getMemberOneInfo", mid);
	}
	
	public List<MemberVO> getMemberListAll(int start, int end, String words, String searchOpt) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("words", words);
		map.put("searchOpt", searchOpt);
		return sql.selectList("member.getMemberListAll", map);
	}
	
	public int getMemberCount(String searchOpt, String words) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sql.selectOne("member.getMemberCount", map);
	}
}
