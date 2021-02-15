package com.jeonghwapark.portfolio.service.MovieService;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.KeyRep.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;

import com.jeonghwapark.portfolio.model.MovieVO;


@Service
public class NaverApiSrv {
	private String clientID = "O6WfzSBCpwvgiKx9jhui";
	private String clientSecret = "E0VJ7gE_g5";
	
	public void search(String keyword) throws Exception {
		String str = URLEncoder.encode(keyword, "UTF-8");
		String api = "https://openapi.naver.com/v1/search/movie.json?query=" + str + "&display=100&country=''"; // json 
		
		URL url =  new URL(api);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("X-Naver-Client-Id", clientID);
		conn.setRequestProperty("X-Naver-Client-Secret", clientSecret);
		
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
		
//		String msg = sb.toString();
//		
//		JSONParser parser = new JSONParser();
//		JSONObject obj = (JSONObject) parser.parse(msg);
//		JSONArray item = (JSONArray)obj.get("items");
//		List <MovieVO> list = null;
//		list = new ArrayList<MovieVO>();
//
//		for (int i = 0; i < item.size(); i ++) {
//		    MovieVO m = new MovieVO();
//		    JSONObject tmp = (JSONObject)item.get(i);
//		    String title = (String)tmp.get("title");
//		    String image = (String)tmp.get("image");
//		    String link = (String)tmp.get("link");
//		    String subtitle = (String)tmp.get("subtitle");
//		    m.setTitle(title);
//		    m.setImage(image);
//		    m.setLink(link);
//		    m.setSubtitle(subtitle);
//		    if (m != null) list.add(m);
//		}
//		for (MovieVO movie : list) {
//		    System.out.println(movie.getTitle());
//		}
		
//		Map<String, Object> map = new HashMap<String, Object>();
//		ObjectMapper mapper = new ObjectMapper();
//		Type type = new typere
//		map = mapper.readValue(response.toString(), type);
//		
//		List<HashMap<String, Object>> items = (ArrayList) map.get("items");
//		return items;
		
	}

}
