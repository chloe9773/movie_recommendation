package com.jeonghwapark.portfolio.repository.BoardRepository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.jeonghwapark.portfolio.model.AuthorityVO;
import com.jeonghwapark.portfolio.model.BoardVO;
import com.jeonghwapark.portfolio.model.MemberVO;

@Repository
public class BoardDao {
	@Autowired
	SqlSession sqlSession;
	
	public List<BoardVO> getBoardList() {
		return sqlSession.selectList("board.getBoardList");
	}
	
	public List<AuthorityVO> getAuthList() {
		return sqlSession.selectList("auth.getAuthList");
	}
	
	public void setBoard(@ModelAttribute BoardVO bvo) {
		sqlSession.insert("board.setBoard", bvo);
	}
	
	public int getBoardCountAll() {
		return sqlSession.selectOne("board.getBoardCountAll");
	}
	
	public void setBoardDelete(String boardCode) {
		sqlSession.delete("board.setBoardDelete", boardCode);
	}
	
	public void setBoardDeleteAll(String boardCode) {
		sqlSession.delete("board.setBoardDeleteAll", boardCode);
	}
	
//	public void dropArticleTbl(String boardCode) {
//		String str = "drop TABLE yf_article_" + boardCode;
//		
//		Map<String, String> map = new HashMap<String, String>();
//		map.put("str", str);
//		
//		sqlSession.insert("board.dropArticleTbl", map);
//	}
//	
//	public void dropCommentTbl(String boardCode) {
//		String str = "drop TABLE yf_comment_" + boardCode;
//		
//		Map<String, String> map = new HashMap<String, String>();
//		map.put("str", str);
//		
//		sqlSession.insert("board.dropCommentTbl", map);
//	}
	
//	public void createArticleTbl(String boardCode) {
//		String str = "CREATE TABLE yf_article_" + boardCode;
//		str += "(aid int not null auto_increment primary key,";
//		str += "title varchar(50) not null,";
//		str += "writer varchar(20) not null,";
//		str += "content text,";
//		str += "hit int default 0,";
//		str += "likeArticle int default 0,";
//		str += "hateArticle int default 0,";
//		str += "regdate datetime,";
//		str += "fileName varchar(300),";
//		str += "fileOriName varchar(300),";
//		str += "fileUrl varchar(500),";
//		str += "ref int,";
//		str += "reStep int,";
//		str += "reLevel int);";
//		
//		Map<String, String> map = new HashMap<String, String>();
//		map.put("str", str);
//		sqlSession.update("board.createArticleTbl", map);
//	}
	
//	public void createCommentTbl(String boardCode) {
//		String str = "CREATE TABLE yf_comment_" + boardCode;
//		str += "(cid int not null auto_increment primary key,";
//		str += "aid int not null,";
//		str += "comment varchar(200) not null,";
//		str += "who varchar(50) not null,";
//		str += "hit int default 0,";
//		str += "regdate datetime);";
//		
//		Map<String, String> map = new HashMap<String, String>();
//		map.put("str", str);
//		sqlSession.update("board.createCommentTbl", map);
//	}
	
	public List<MemberVO> getManagerList() {
		return sqlSession.selectList("board.getManagerList");
	}
	
	public List<BoardVO> getAllBoardCode() {
		return sqlSession.selectList("board.getAllBoardCode");
	}
}
