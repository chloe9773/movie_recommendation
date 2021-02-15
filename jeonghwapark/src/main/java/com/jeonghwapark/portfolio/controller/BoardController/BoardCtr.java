package com.jeonghwapark.portfolio.controller.BoardController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jeonghwapark.portfolio.model.AuthorityVO;
import com.jeonghwapark.portfolio.model.BoardVO;
import com.jeonghwapark.portfolio.model.MemberVO;
import com.jeonghwapark.portfolio.model.QuestionVO;
import com.jeonghwapark.portfolio.pager.Pager;
import com.jeonghwapark.portfolio.service.BoardService.BoardSrv;

@Controller
@RequestMapping("/board")
public class BoardCtr {
	@Autowired
	BoardSrv boardSrv;
	
	@RequestMapping(value = "")
	public ModelAndView getBoard(@RequestParam(defaultValue = "") String words, @RequestParam(defaultValue = "boardCode") String searchOpt) {
		List<BoardVO> list = boardSrv.getBoardList();
		//System.out.println(list);
		int count = boardSrv.getBoardCountAll();
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("searchOpt", searchOpt);
		mav.addObject("words", words);
		mav.setViewName("admin/board/yf_admin_board");
		
		return mav;
	}
	
	@RequestMapping(value="/yf_admin_board_create", method = RequestMethod.POST)
	public String setBoard(@ModelAttribute BoardVO bvo) {
		
		boardSrv.setBoard(bvo);
		
		return "success";
	}
	
	@RequestMapping(value = "/yf_admin_board_delete", method = RequestMethod.POST)
	@ResponseBody
	public String setBoardDelete(@RequestParam String boardCode) {
		boardSrv.setBoardDelete(boardCode);
		
		return "success";
	}
	
	@RequestMapping(value = "/yf_admin_board_delete_all", method = RequestMethod.POST)
	@ResponseBody
	public String setBoardDeleteAll(@RequestParam(value = "chkArr[]") List<String> chkArr) {
		for(String boardCode : chkArr) {
			boardSrv.setBoardDeleteAll(boardCode);
		}
		return "success";
	}
	
	@RequestMapping(value="/yf_get_manager", method = RequestMethod.POST)
	@ResponseBody
	public List<MemberVO> getManagers() {
		List<MemberVO> list = boardSrv.getManagerList();
		
		return list;
	}
	
	@RequestMapping(value="/yf_get_auth", method = RequestMethod.POST)
	@ResponseBody
	public List<AuthorityVO> getAuth() {
		List<AuthorityVO> list = boardSrv.getAuthList();
		
		return list;
	}
	
	@RequestMapping(value="/yf_get_category", method = RequestMethod.POST)
	@ResponseBody
	public List<BoardVO> getCategory() {
		List<BoardVO> list = boardSrv.getBoardList();
		
		return list;
	}

}
