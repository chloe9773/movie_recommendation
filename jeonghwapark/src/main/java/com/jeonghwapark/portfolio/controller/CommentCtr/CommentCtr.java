package com.jeonghwapark.portfolio.controller.CommentCtr;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeonghwapark.portfolio.model.CommentVO;
import com.jeonghwapark.portfolio.service.CommentService.CommentSrv;

@Controller
@RequestMapping("/comment")
public class CommentCtr {
	@Autowired
	CommentSrv commentSrv;
	
	@RequestMapping("/yf_comment_list")
	@ResponseBody
	private Map<String, Object> getCommentList(@ModelAttribute CommentVO cvo) {
		int cCount	= commentSrv.getAnsCount(cvo);
		
		List<CommentVO> list = commentSrv.getAnsList(cvo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("cCount", cCount);
		
		return map;
	}
	
	@RequestMapping("/yf_comment_register")
	@ResponseBody
	public void setAnswer(@ModelAttribute CommentVO cvo) {
		commentSrv.setAnswer(cvo);
	}
	
	@RequestMapping("/yf_comment_delete")
	@ResponseBody
	public void setAnswerDelete(@RequestParam int cid) {
		commentSrv.setAnswerDelete(cid);
	}
	
	@RequestMapping("/yf_comment_modify")
	@ResponseBody
	public void setAnswerModify(@ModelAttribute CommentVO cvo) {
		commentSrv.setAnswerModify(cvo);
	}
	
	@RequestMapping("/yf_comments_list")
	@ResponseBody
	private Map<String, Object> getArticleCommentList(@ModelAttribute CommentVO cvo) {
		int cCount	= commentSrv.getArticleAnsCount(cvo);
		
		List<CommentVO> list = commentSrv.getArticleAnsList(cvo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("cCount", cCount);
		
		return map;
	}
	
	@RequestMapping("/yf_comments_register")
	@ResponseBody
	public void setArticleAnswer(@ModelAttribute CommentVO cvo) {
		commentSrv.setArticleAnswer(cvo);
	}
	
	@RequestMapping("/yf_comments_modify")
	@ResponseBody
	public void modAnswer(@ModelAttribute int cid) {
		System.out.println(cid);
	}
}
