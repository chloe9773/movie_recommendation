package com.jeonghwapark.portfolio.repository.BoardRepository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.portfolio.model.ArticleVO;
import com.jeonghwapark.portfolio.model.BoardVO;
import com.jeonghwapark.portfolio.model.MemberVO;

@Repository
public class ArticleDao {
	@Autowired
	private SqlSession sql;
	
	
	public List<ArticleVO> getTotalArticleList( int start, int end, String words, String searchOpt, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("words", words);
		map.put("searchOpt", searchOpt);
		map.put("boardCode", boardCode);
		
		return sql.selectList("article.getTotalArticleList", map);
	}
	
	public List<ArticleVO> getArticleList( int start, int end, String words, String searchOpt, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("words", words);
		map.put("searchOpt", searchOpt);
		map.put("boardCode", boardCode);
		
		return sql.selectList("article.getArticleList", map);
	}
	
	public int getArticleTotalCount(String words, String searchOpt, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("words", words);
		map.put("searchOpt", searchOpt);
		map.put("boardCode", boardCode);
		
		return sql.selectOne("article.getArticleTotalCount", map);
	}
	
	public int getArticleCount(String words, String searchOpt, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("words", words);
		map.put("searchOpt", searchOpt);
		map.put("boardCode", boardCode);
		
		return sql.selectOne("article.getArticleCount", map);
	}
	
	public BoardVO getBoardOne(BoardVO boardTitle) {
		return sql.selectOne("article.getBoardOne", boardTitle);
	}
	
	public BoardVO getBoardTitle(BoardVO boardCode) {
		return sql.selectOne("article.getBoardTitle", boardCode);
	}
	
	public int setArticle(ArticleVO vo) {
		return sql.insert("article.setArticle", vo);
	}
	
	public void setArticleNum(ArticleVO avo) {
		sql.insert("article.setArticleNum", avo);
	}
	
	public BoardVO getBoardOne(String boardCode) {
		return sql.selectOne("article.getBoardOne", boardCode);
	}
	
	public ArticleVO getArticleOne(ArticleVO avo) {
		return sql.selectOne("article.getArticleOne", avo);
	}
	
	public void hitUp(ArticleVO avo) {
		sql.update("article.hitUp", avo);
	}
	
	public List<ArticleVO> getUserArticleList(String currUser, int start, int end) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("currUser", currUser);
		
		return sql.selectList("article.getUserArticleList", map);
	}
	
	public int getUserArticleCnt(String currUser) {
		return sql.selectOne("article.getUserArticleCnt", currUser);
	}
	
	public int getUserCommentCnt(String currUser) {
		return sql.selectOne("article.getUserCommentCnt", currUser);
	}
}
