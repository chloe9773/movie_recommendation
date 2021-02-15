package com.jeonghwapark.portfolio.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardVO {
	private int bid;
	private String boardDivision;
	private String boardCode;
	private String boardMaker;
	private String boardTitle;
	private int boardRead;
	private int boardWrite;
	private int boardReply;
	private int boardDownload;
	private Date boardRegdate;
	private String boardAdmin;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}
	public String getBoardMaker() {
		return boardMaker;
	}
	public void setBoardMaker(String boardMaker) {
		this.boardMaker = boardMaker;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public int getBoardRead() {
		return boardRead;
	}
	public void setBoardRead(int boardRead) {
		this.boardRead = boardRead;
	}
	public int getBoardWrite() {
		return boardWrite;
	}
	public void setBoardWrite(int boardWrite) {
		this.boardWrite = boardWrite;
	}
	public int getBoardReply() {
		return boardReply;
	}
	public void setBoardReply(int boardReply) {
		this.boardReply = boardReply;
	}
	public int getBoardDownload() {
		return boardDownload;
	}
	public void setBoardDownload(int boardDownload) {
		this.boardDownload = boardDownload;
	}
	public String getBoardRegdate() {
		return sdf.format(boardRegdate);
	}
	public void setBoardRegdate(Date boardRegdate) {
		this.boardRegdate = boardRegdate;
	}
	public String getBoardAdmin() {
		return boardAdmin;
	}
	public void setBoardAdmin(String boardAdmin) {
		this.boardAdmin = boardAdmin;
	}
	public String getBoardDivision() {
		return boardDivision;
	}
	public void setBoardDivision(String boardDivision) {
		this.boardDivision = boardDivision;
	}
}
