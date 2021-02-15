package com.jeonghwapark.portfolio.service.QnAService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.portfolio.model.QuestionVO;
import com.jeonghwapark.portfolio.repository.QnARepository.QnADao;

@Service
public class QnAService {
	
	@Autowired
	QnADao qnaDao;
	
	public int getQuestionTotalCount(String words, String searchOpt) {
		return qnaDao.getQuestionTotalCount(words, searchOpt);
	}
	
	public List<QuestionVO> getQuestionList(int start, int end, String words, String searchOpt) {
		return qnaDao.getQuestionList(start, end, words, searchOpt);
	}
	
	public QuestionVO getQuestionOne(QuestionVO qvo) {
		return qnaDao.getQuestionOne(qvo);
	}
	
	public int getAnsCount(int qid) {
		return qnaDao.getAnsCount(qid);
	}
	
	public int setQuestionReply(QuestionVO qvo) {
		QuestionVO dto = qnaDao.getQuestionReplyInfo(qvo);
		qvo.setRef(dto.getRef()); //update
		qvo.setReStep(dto.getReStep());
		qvo.setReLevel(dto.getReLevel());
		
		qnaDao.updateQcheck(qvo.getRef());
		
		int result = 0;
		
		result += qnaDao.setQuestionRef(qvo);
		result += qnaDao.setQuestionReply(qvo);
		
		return result;
	}
	
	public QuestionVO getQuestionReplyInfo(QuestionVO qvo) {
		return null;
	}

	
	public int setQuestionRef(QuestionVO qvo) {
		return 0;
	}
	
	public void articleDelete(int qid) {
		qnaDao.articleDelete(qid);
	}
	
	public void commentDelete(int qid) {
		qnaDao.commentDelete(qid);
	}
}
