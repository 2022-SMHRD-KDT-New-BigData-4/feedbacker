package kr.fanfeed.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@RestController
public class BookcController {

	@RequestMapping("/booksearch.do")
	public String booksearch(String query) {
		// @ TODO 크롤링으로 들어올 베스트셀러 이름 받아서 json리턴 로직으로 변경
		
		// java에서 api통신후 결과 받을때 이용
		String inputLine;
		StringBuffer response = new StringBuffer();
		
		// json변환을 위한것들
		Map<String, Object> bestMap = new HashMap<String, Object>();
		Gson gson = new Gson();
		JsonArray jsonArr = new JsonArray();
		
		String[] bestArr = { "세이노의 가르침", "스즈메의 문단속", "김미경의 마흔 수업", "사장학개론", "장하준의 경제학 레시피" }; // 테스트용 책이름 배열

		// api통신 반복 로직
		for (String temp : bestArr) {
			// 통신후 stringbuffer 초기화
			response.delete(0, response.length());
			try {

				String apiKey = "497b80bd78bb66a7e344ff96a98a4af8";
				String apiUrl = "https://dapi.kakao.com/v3/search/book?target=title&query="
						+ URLEncoder.encode(temp, "UTF-8");
				URL url = new URL(apiUrl);
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				conn.setRequestProperty("Authorization", "KakaoAK " + apiKey);

				int responseCode = conn.getResponseCode();
				BufferedReader br;
				if (responseCode == 200) { // 정상 호출
					br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
				} else { // 에러 발생
					br = new BufferedReader(new InputStreamReader(conn.getErrorStream(), "UTF-8"));
				}
				while ((inputLine = br.readLine()) != null) {
					response.append(inputLine);
				}
				br.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			// 결과json 파싱해서 인덱스0만 jsonArray에 담음
			JsonElement element = JsonParser.parseString(response.toString());
			JsonObject object = element.getAsJsonObject();
			JsonArray arr = object.getAsJsonArray("documents");
			jsonArr.add(arr.get(0));

		}
		
		// map으로 감싸고 json으로 최종 변환후 리턴
		bestMap.put("documents", jsonArr);
		
		return gson.toJson(bestMap);
	}

}
