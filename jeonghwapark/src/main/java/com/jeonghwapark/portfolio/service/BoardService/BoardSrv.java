package com.jeonghwapark.portfolio.service.BoardService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.jeonghwapark.portfolio.model.AuthorityVO;
import com.jeonghwapark.portfolio.model.BoardVO;
import com.jeonghwapark.portfolio.model.MemberVO;
import com.jeonghwapark.portfolio.repository.BoardRepository.BoardDao;

@Service
public class BoardSrv {
	@Autowired
	BoardDao boardDao;
	
	public List<BoardVO> getBoardList() {
		return boardDao.getBoardList();
	}
	
	public List<AuthorityVO> getAuthList() {
		return boardDao.getAuthList();
	}
	
	public void setBoard(@ModelAttribute BoardVO bvo) {
		boardDao.setBoard(bvo);
	}
	
	public int getBoardCountAll() {
		return boardDao.getBoardCountAll();
	}
	
	public void setBoardDelete(String boardCode) {
		boardDao.setBoardDelete(boardCode);
	}
	
	public void setBoardDeleteAll(String boardCode) {
		boardDao.setBoardDeleteAll(boardCode);
	}
	
//	public void dropArticleTbl(String boardCode) {
//		boardDao.dropArticleTbl(boardCode);
//	}
//	
//	public void dropCommentTbl(String boardCode) {
//		boardDao.dropCommentTbl(boardCode);
//	}
//	
//	public void createArticleTbl(String boardCode) {
//		boardDao.createArticleTbl(boardCode);
//	}
//	
//	public void createCommentTbl(String boardCode) {
//		boardDao.createCommentTbl(boardCode);
//	}
	
	public List<MemberVO> getManagerList() {
		return boardDao.getManagerList();
	}
	
	public List<BoardVO> getAllBoardCode() {
		return boardDao.getAllBoardCode();
	}
}
