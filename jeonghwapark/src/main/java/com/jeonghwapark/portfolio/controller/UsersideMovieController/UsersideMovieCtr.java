package com.jeonghwapark.portfolio.controller.UsersideMovieController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jeonghwapark.portfolio.model.MovieVO;
import com.jeonghwapark.portfolio.service.MovieService.KmdbSrv;

@Controller
@RequestMapping("/movie")
public class UsersideMovieCtr {
	@Autowired
	KmdbSrv kSrv;
	
	@RequestMapping("")
	public String getMovieSearch() {
		return "yf_user/yf_user_movie_search";
	}
	
	@RequestMapping("/search_movie")
	@ResponseBody
	public List<MovieVO> setMovieSearch(@RequestParam(defaultValue = "") String words, @RequestParam(defaultValue = "") String searchOpt) throws Exception {	
		
		return kSrv.search(words, searchOpt);
	}
}
