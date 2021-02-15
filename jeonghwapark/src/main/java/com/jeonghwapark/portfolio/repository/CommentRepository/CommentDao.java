package com.jeonghwapark.portfolio.repository.CommentRepository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.portfolio.model.CommentVO;

@Repository
public class CommentDao {
	@Autowired
	SqlSession sqlSession;
	
	public void setAnswer(CommentVO cvo) {
		sqlSession.insert("comment.setAnswer", cvo);
	}
	
	public int getAnsCount(CommentVO cvo) {
		return sqlSession.selectOne("comment.getAnsCount", cvo);
	}
	
	public List<CommentVO> getAnsList(CommentVO cvo) {
		return sqlSession.selectList("comment.getAnsList", cvo);
	}
	
	public void setAnswerDelete(int cid) {
		sqlSession.delete("comment.setAnswerDelete",cid);
	}
	
	public void setAnswerModify(CommentVO cvo) {
		sqlSession.delete("comment.setAnswerModify",cvo);
	}
	
	public void setArticleAnswer(CommentVO cvo) {
		sqlSession.insert("comment.setArticleAnswer", cvo);
	}
	
	public int getArticleAnsCount(CommentVO cvo) {
		return sqlSession.selectOne("comment.getArticleAnsCount", cvo);
	}
	
	public List<CommentVO> getArticleAnsList(CommentVO cvo) {
		return sqlSession.selectList("comment.getArticleAnsList", cvo);
	}
}
