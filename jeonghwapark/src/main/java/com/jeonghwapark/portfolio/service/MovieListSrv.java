package com.jeonghwapark.portfolio.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeonghwapark.portfolio.model.MovieVO;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MovieListSrv {
	private final MovieClientSrv movieClient = new MovieClientSrv();
	
	@Transactional(readOnly = true)
	public MovieVO findByKeyword(String keyword) {
		return movieClient.requestMovie(keyword);
	}
}

