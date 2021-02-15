package com.jeonghwapark.portfolio.service.MovieService;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;

import com.jeonghwapark.portfolio.model.MovieVO;

@Service
public class KmdbSrv {
	public List<MovieVO> search(String keyword, String search) throws Exception {
		StringBuilder urlBuilder = new StringBuilder("http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2"); /*URL*/ 
		urlBuilder.append("&" + URLEncoder.encode("ServiceKey","UTF-8") + "=V7L397DB8R72BQ0845L0"); // 서비스키
		urlBuilder.append("&" + URLEncoder.encode("listCount","UTF-8") + "=500");
		
		if (search.equals("title")) {
			urlBuilder.append("&" + URLEncoder.encode("title","UTF-8") + "=" + URLEncoder.encode(keyword, "UTF-8")); // 제목 
		} else if (search.equals("director")) {
			urlBuilder.append("&" + URLEncoder.encode("director","UTF-8") + "=" + URLEncoder.encode(keyword, "UTF-8")); // 감독 
		} else if (search.equals("genre")) {
			urlBuilder.append("&" + URLEncoder.encode("genre","UTF-8") + "=" + URLEncoder.encode(keyword, "UTF-8")); // 장르
		} else if (search.equals("nation")) {
			urlBuilder.append("&" + URLEncoder.encode("nation","UTF-8") + "=" + URLEncoder.encode(keyword, "UTF-8")); // 국가 
		}
		
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		
		int resCode = conn.getResponseCode();
		BufferedReader br;
		if (resCode == 200) { // 200 : OK
			br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else { // errors
			br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		
		StringBuilder sb = new StringBuilder();
		String line = "";
		while ((line = br.readLine()) != null) {
			sb.append(line);
		}
		
		String msg = sb.toString();
		
		JSONParser parser = new JSONParser();
		JSONObject obj = (JSONObject) parser.parse(msg);
		JSONArray data = (JSONArray)obj.get("Data");
		JSONObject dataObj =(JSONObject) parser.parse(data.get(0).toString());
		JSONArray parsedData = (JSONArray) dataObj.get("Result");
		List <MovieVO> list = null;
		list = new ArrayList<MovieVO>();

		for (int i = 0; i < parsedData.size(); i ++) {
		    MovieVO m = new MovieVO();
		    JSONObject tmp = (JSONObject)parsedData.get(i);
		    
		    String title = ((String)tmp.get("title")).replaceAll("!HS", "").replaceAll("!HE", "").trim().replaceAll("  ", "");
		    
		    String titleEng = ((String)tmp.get("titleEng")).trim();
		    
		    JSONObject directors = (JSONObject)tmp.get("directors");
		    JSONArray director = (JSONArray) directors.get("director");
		    String dName = "";
		    for (int j = 0; j < director.size(); j++) {
		    	if ((String) ((JSONObject) director.get(j)).get("directorNm") != "") {
		    		dName += (String) ((JSONObject) director.get(j)).get("directorNm") + ";";
		    	}
		    }
		    
		    JSONObject actors = (JSONObject)tmp.get("actors");
		    JSONArray actor = (JSONArray) actors.get("actor");
		    String aName = "";
		    for (int j = 0; j < actor.size(); j++) {
		    	if ((String) ((JSONObject) actor.get(j)).get("actorNm") != "") {
		    		aName += (String) ((JSONObject) actor.get(j)).get("actorNm") + ";";
		    	}
		    } 
		    
		    String nation = ((String)tmp.get("nation")).trim();
		    
		    JSONObject plots = (JSONObject)tmp.get("plots");
		    JSONArray plot = (JSONArray) plots.get("plot");
		    String plotText = "";
		    for (int j = 0; j < plot.size(); j++) {
		    	if (((String) ((JSONObject) plot.get(j)).get("plotLang")).equals("한국어")) {
		    		plotText += (String) ((JSONObject) plot.get(j)).get("plotText") + ";";
		    	}
		    }
		    
		    String genre = ((String)tmp.get("genre")).trim();
		    
		    //String poster = split(((String)tmp.get("posters")), "|").toString();
		    String[] arr = ((String)tmp.get("posters")).split("\\|");
		    String poster = arr[0];
		    
		    String keys = ((String)tmp.get("keywords")).trim();
		    
		    JSONObject ratings = (JSONObject)tmp.get("ratings");
		    JSONArray rating = (JSONArray) ratings.get("rating");
		    String releaseDate = (String) ((JSONObject) rating.get(0)).get("releaseDate");
		    String releaseYear = null;
		    
		    if (releaseDate != "") {
			    releaseYear = releaseDate.substring(0, 4);
			    releaseDate = releaseDate.substring(0,4) + "-" + releaseDate.substring(4, 6) + "-" + releaseDate.substring(6);
		    }

		    m.setTitle(title);
		    m.setTitleEng(titleEng);
		    m.setDirectors(dName);
		    m.setActors(aName);
		    m.setNation(nation);
		    m.setGenre(genre);
		    m.setPlots(plotText);
		    m.setPosterUrl(poster);
		    m.setKeyword(keys);
		    m.setReleaseYear(releaseYear);
		    m.setReleaseDate(releaseDate);
		    
		    if (m != null) list.add(m);
		}
		
//		for (MovieVO movie : list) {
//		    System.out.println(movie.getTitle());
//		    System.out.println(movie.getDirectors());
//		}
		
		return list;
	}
}
