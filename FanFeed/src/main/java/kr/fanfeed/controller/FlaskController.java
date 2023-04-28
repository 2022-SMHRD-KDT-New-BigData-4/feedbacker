package kr.fanfeed.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FlaskController {

		@RequestMapping("/flask.do")
		public String flask (String isbn) {

		      String inputLine;
		       StringBuffer response = new StringBuffer();
		      try {
		         String apiUrl="http://127.0.0.1:5000/predict/" + URLEncoder.encode(isbn, "UTF-8");
		         URL url=new URL(apiUrl);
		         HttpURLConnection conn=(HttpURLConnection) url.openConnection();
		         conn.setRequestMethod("GET");
		         
		         int responseCode = conn.getResponseCode();
		          BufferedReader br;
		          if (responseCode == 200) { // 정상 호출
		              br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
		          } else {  // 에러 발생
		              br = new BufferedReader(new InputStreamReader(conn.getErrorStream(), "UTF-8"));
		          }          
		          while ((inputLine = br.readLine()) != null) {
		              response.append(inputLine);
		          }
		          br.close();
		          System.out.println(response.toString()); // 데이터 받아오기 테스트
		      }catch (Exception e) {
		           e.printStackTrace();  
		      }
		      return response.toString();   
		}
		
}
