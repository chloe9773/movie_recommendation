package com.jeonghwapark.portfolio.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.jeonghwapark.portfolio.model.QArticleVO;
import com.jeonghwapark.portfolio.model.QuestionVO;

@Repository
public class ContentInsertDao {
	@Autowired
	SqlSession sqlSession;
	
	public void setContact(QuestionVO qvo) {
		sqlSession.insert("content.setContact", qvo);
	}
	
	public void createTbl(String writer) {
		String str = "create table " + writer + "_question (";
		str += "qnum int auto_increment not null primary key,";
		str += "id int not null);";
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		
		sqlSession.update("content.createTbl", map);
	}
	
	public void insertQnumTbl(String writer, int qid) {
		String str = "INSERT INTO " + writer + "_question ";
		str += "SET id = " + qid;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sqlSession.insert("content.insertQnumTbl", map);
	}
	
	public int chkWriter(Map<String, String> map) {
		return sqlSession.selectOne("content.chkWriter", map);
	}
	
	public int getID(QuestionVO qvo) {
		return sqlSession.selectOne("content.getID", qvo);
	}
	
	public void checkID(int qid) {
		sqlSession.update("content.checkID", qid);
	}
	
	public List<QuestionVO> getQuestionList(Map<String, String> map) {
		return sqlSession.selectList("content.getQuestionList", map);
	}
	
	public QuestionVO getArticleOne(QuestionVO qvo) {
		return sqlSession.selectOne("content.getArticleOne", qvo);
	}
	
	public void updateContact(QuestionVO qvo) {
		sqlSession.update("content.updateContact", qvo);
	}
	
	public void deleteMyContact(QuestionVO qvo) {
		sqlSession.delete("content.deleteMyContact", qvo);
	}
	
	public void deleteContact(QuestionVO qvo) {
		sqlSession.delete("content.deleteContact", qvo);
	}
	
	public int getCount(QuestionVO qvo) {
		return sqlSession.selectOne("content.getCount", qvo);
	}
	
	public void dropTbl(QuestionVO qvo) {
		String str = "DROP TABLE " + qvo.getqWriter() + "_question;";
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		
		sqlSession.update("content.insertQnumTbl", map);
	}
}
