package com.jeonghwapark.portfolio.service.CommentService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.jeonghwapark.portfolio.model.CommentVO;
import com.jeonghwapark.portfolio.repository.CommentRepository.CommentDao;

@Service
public class CommentSrv {
	@Autowired
	CommentDao commentDao;
	
	public void setAnswer(CommentVO cvo) {
		commentDao.setAnswer(cvo);
	}
	
	public int getAnsCount(CommentVO cvo) {
		return commentDao.getAnsCount(cvo);
	}
	
	public List<CommentVO> getAnsList(CommentVO cvo) {
		return commentDao.getAnsList(cvo);
	}
	
	public void setAnswerDelete(int cid) {
		commentDao.setAnswerDelete(cid);
	}
	
	public void setAnswerModify(CommentVO cvo) {
		commentDao.setAnswerModify(cvo);
	}
	
	public void setArticleAnswer(CommentVO cvo) {
		commentDao.setArticleAnswer(cvo);
	}
	
	public int getArticleAnsCount(CommentVO cvo) {
		return commentDao.getArticleAnsCount(cvo);
	}
	
	public List<CommentVO> getArticleAnsList(CommentVO cvo) {
		return commentDao.getArticleAnsList(cvo);
	}
}
