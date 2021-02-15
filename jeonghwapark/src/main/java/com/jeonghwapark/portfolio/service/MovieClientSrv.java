package com.jeonghwapark.portfolio.service;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.jeonghwapark.portfolio.model.MovieVO;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MovieClientSrv {
	private final RestTemplate restTemplate = new RestTemplate();
	private final String CLIENT_ID = "O6WfzSBCpwvgiKx9jhui";
	private final String CLIENT_SECRET = "E0VJ7gE_g5";
	private final String OpenNaverMovieURL_getMovies = "https://openapi.naver.com/v1/search/movie.json?query={keyword}";
	
	//KOBIS
	//private final String API_KEY = "45e421ae301f78559e3202f9dc80ef18";
	//private final String OpenKobisURL_getMovies = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieList.json";	
	
	public MovieVO requestMovie(String keyword) { 
		final HttpHeaders headers = new HttpHeaders();
		
		headers.set("X-Naver-Client-Id", CLIENT_ID); 
		headers.set("X-Naver-Client-Secret", CLIENT_SECRET); 
		
		final HttpEntity<String> entity = new HttpEntity<>(headers); 
		
		return restTemplate.exchange(OpenNaverMovieURL_getMovies, HttpMethod.GET, entity, MovieVO.class, keyword).getBody(); 
	}
}
