package com.jeonghwapark.portfolio.repository.QnARepository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.portfolio.model.QuestionVO;

@Repository
public class QnADao {

	@Autowired
	SqlSession sqlSession;
	
	public int getQuestionTotalCount(String words, String searchOpt) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("words", words);
		map.put("searchOpt", searchOpt);
		
		return sqlSession.selectOne("qnaMapper.getQuestionTotalCount", map);
	}
	
	public List<QuestionVO> getQuestionList(int start, int end, String words, String searchOpt) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("words", words);
		map.put("searchOpt", searchOpt);
		map.put("start", start);
		map.put("end", end);
		
		return sqlSession.selectList("qnaMapper.getQuestionList", map);
	}
	
	public QuestionVO getQuestionOne(QuestionVO qvo) {
		return sqlSession.selectOne("qnaMapper.getQuestionOne", qvo);
	}
	
	public int getAnsCount(int qid) {
		return sqlSession.selectOne("qnaMapper.getAnsCount", qid);
	}
	
	public QuestionVO getQuestionReplyInfo(QuestionVO qvo) {
		return sqlSession.selectOne("qnaMapper.getQuestionReplyInfo", qvo);
	}

	public int setQuestionRef(QuestionVO qvo) {

		return sqlSession.update("qnaMapper.setQuestionRef", qvo);
	}
	
	public void updateQcheck(int ref) {
		sqlSession.update("qnaMapper.updateQcheck", ref);
	}

	public int setQuestionReply(QuestionVO qvo) {
		return sqlSession.insert("qnaMapper.setQuestionReply", qvo);
	}
	
	public void articleDelete(int qid) {
		sqlSession.delete("qnaMapper.articleDelete", qid);
	}
	
	public void commentDelete(int aid) {
		sqlSession.delete("qnaMapper.articleDelete", aid);
	}
}
