package com.jeonghwapark.portfolio.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.portfolio.model.QArticleVO;
import com.jeonghwapark.portfolio.model.QuestionVO;
import com.jeonghwapark.portfolio.repository.ContentInsertDao;

@Service
public class ContentInsertSrv {
	@Autowired
	ContentInsertDao ciDao;
	
	public void setContact(QuestionVO qvo) {
		ciDao.setContact(qvo);
	}
	
	public void createTbl(String writer) {
		ciDao.createTbl(writer);
	}
	
	public void insertQnumTbl(String writer, int qid) {
		ciDao.insertQnumTbl(writer, qid);
	}
	
	public int chkWriter(Map<String, String> map) {
		return ciDao.chkWriter(map);
	}
	
	public int getID(QuestionVO qvo) {
		return ciDao.getID(qvo);
	}
	
	public void checkID(int qid) {
		ciDao.checkID(qid);
	}
	
	public List<QuestionVO> getQuestionList(Map<String, String> map) {
		//System.out.println(userName);
		return ciDao.getQuestionList(map);
	}
	
	public QuestionVO getArticleOne(QuestionVO qvo) {
		return ciDao.getArticleOne(qvo);
	}
	
	public void updateContact(QuestionVO qvo) {
		ciDao.updateContact(qvo);
	}
	
	public void deleteMyContact(QuestionVO qvo) {
		ciDao.deleteMyContact(qvo);
	}
	
	public void deleteContact(QuestionVO qvo) {
		ciDao.deleteContact(qvo);
	}
	
	public int getCount(QuestionVO qvo) {
		return ciDao.getCount(qvo);
	}
	
	public void dropTbl(QuestionVO qvo) {
		ciDao.dropTbl(qvo);
	}
}
