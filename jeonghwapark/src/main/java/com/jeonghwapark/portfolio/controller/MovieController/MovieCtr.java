package com.jeonghwapark.portfolio.controller.MovieController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/movielist")
public class MovieCtr {
	
	@RequestMapping(value= "")
	public String getMovielist() {
		return "admin/movie/yf_admin_movieList";
	}	
}
