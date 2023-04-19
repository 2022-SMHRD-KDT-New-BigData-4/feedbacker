package kr.fanfeed.jobScheduler;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import kr.fanfeed.controller.FlaskController;
import kr.fanfeed.mapper.FanFeedMapper;


@Component
public class schedulerTest {
	
	@Autowired FanFeedMapper mapper;
	
//	스케줄러는 매게변수를 받지 않는 메소드에 한해 사용가능하다
//	@Scheduled(fixedRateString = "60000", initialDelay = 3000) 1분마다 3초 대기
    @Scheduled(cron = " 0 0/5 * * * * ")	// 5분 마다
    public void timeScheduled() {
        SimpleDateFormat currentDateTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");		
		String latestDate = currentDateTime.format(new Date()).toString();
		System.out.println("현재 시간 : " + latestDate + " 호출 합니다");
		
//		flask();
		
		FlaskController fc = new FlaskController();
		
		// fc.flask();
		
}
    
//    public void flask() {
//    	
//    	String inputLine;
//    	StringBuffer response = new StringBuffer();
//    	try {
//    		String apiUrl="http://127.0.0.1:5000/test"; // + URLEncoder.encode(@@, "UTF-8");
//    		URL url=new URL(apiUrl);
//    		HttpURLConnection conn=(HttpURLConnection) url.openConnection();
//    		conn.setRequestMethod("GET");
//    		
//    		int responseCode = conn.getResponseCode();
//    		BufferedReader br;
//    		if (responseCode == 200) { // 정상 호출
//    			br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
//    		} else {  // 에러 발생
//    			br = new BufferedReader(new InputStreamReader(conn.getErrorStream(), "UTF-8"));
//    		}          
//    		while ((inputLine = br.readLine()) != null) {
//    			response.append(inputLine);
//    		}
//    		br.close();
//    		System.out.println(response.toString()); // 데이터 받아오기 테스트
//    	}catch (Exception e) {
//    		e.printStackTrace();  
//    	}
//    	// return response.toString();   
//    	
//    }
}
