package com.jeonghwapark.portfolio.service.BoardService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.portfolio.model.ArticleVO;
import com.jeonghwapark.portfolio.model.BoardVO;
import com.jeonghwapark.portfolio.model.MemberVO;
import com.jeonghwapark.portfolio.repository.BoardRepository.ArticleDao;

@Service
public class ArticleService {
	@Autowired
	ArticleDao articleDao;
	
	
	public List<ArticleVO> getTotalArticleList(int start, int end, String words, String searchOpt, String boardCode) {
		return articleDao.getTotalArticleList(start, end, words, searchOpt, boardCode);
	}
	
	public List<ArticleVO> getArticleList(int start, int end, String words, String searchOpt, String boardCode) {
		return articleDao.getArticleList(start, end, words, searchOpt, boardCode);
	}
	
	public int getArticleTotalCount(String words, String searchOpt, String boardCode) {
		return articleDao.getArticleTotalCount(words, searchOpt, boardCode);
	}
	
	public int getArticleCount(String words, String searchOpt, String boardCode) {
		return articleDao.getArticleCount(words, searchOpt, boardCode);
	}
	
	public BoardVO getBoardOne(BoardVO boardTitle) {
		return articleDao.getBoardOne(boardTitle);
	}
	
	public BoardVO getBoardTitle(BoardVO boardCode) {
		return articleDao.getBoardTitle(boardCode);
	}
	
	public int setArticle(ArticleVO vo) {
		String title = vo.getTitle();
		String writer = vo.getWriter();
		String content = vo.getContent();
		
		title 	= title.replace("<", "&lt;");
		title 	= title.replace("<", "&gt;");
		writer 	= writer.replace("<", "&lt;");
		writer 	= writer.replace("<", "&gt;");
		content = content.replace("<", "&lt;");
		content = content.replace("<", "&gt;");
		
		title	= title.replace(" ", "&nbsp;");
		writer	= writer.replace(" ", "&nbsp;");
		
		content = content.replace("\n", "<br />");
		
		vo.setTitle(title);
		vo.setWriter(writer);
		vo.setContent(content);
		
		return articleDao.setArticle(vo);
	}
	
	public void setArticleNum(ArticleVO avo) {
		articleDao.setArticleNum(avo);
	}
	
	
	public BoardVO getBoardOne(String boardCode) {
		return articleDao.getBoardOne(boardCode);
	}
	
	public ArticleVO getArticleOne(ArticleVO avo) {
		return articleDao.getArticleOne(avo);
	}
	
	public void hitUp(ArticleVO avo) {
		articleDao.hitUp(avo);
	}
	
	public List<ArticleVO> getUserArticleList(String currUser, int start, int end) {
		return articleDao.getUserArticleList(currUser, start, end);
	}
	
	public int getUserArticleCnt(String currUser) {
		return articleDao.getUserArticleCnt(currUser);
	}
	
	public int getUserCommentCnt(String currUser) {
		return articleDao.getUserCommentCnt(currUser);
	}
}
