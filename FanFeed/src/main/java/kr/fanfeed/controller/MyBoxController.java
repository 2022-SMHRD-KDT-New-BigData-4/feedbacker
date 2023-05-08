package kr.fanfeed.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.fanfeed.entity.Book;
import kr.fanfeed.mapper.FanFeedMapper;

@Controller
public class MyBoxController {

	@Autowired
	FanFeedMapper mapper;

	@PostMapping("/bookmark.do")
	public String moveBookMark(HttpServletRequest request, HttpSession session) {

		List<String> bookItems = (List<String>) session.getAttribute("mybox");
		if (bookItems == null) {
	        bookItems = new ArrayList<>();
	    }

		List<Book> bookMark = new ArrayList<>();
		if (bookItems.isEmpty()) {

		} else {
			bookItems.forEach(i -> bookMark.add(mapper.getOneBook(i)));
		}

		request.setAttribute("showbookmark", bookMark);

		return "fanfeed/mybox";
	}

	@GetMapping("/bookmark.do")
	public @ResponseBody ResponseEntity<String> addBookMark(String isbn, HttpSession session) {

	    // 세션에서 "mybox" 속성을 가져오고, 없으면 빈 리스트를 생성
	    List<String> bookItems = (List<String>) session.getAttribute("mybox");
	    if (bookItems == null) {
	        bookItems = new ArrayList<>();
	    }

	    try {
	        // 북마크목록에 isbn이 없으면 추가
	        if (!bookItems.contains(isbn)) {
	            bookItems.add(isbn);
	        // isbn이 있으면 제거
	        } else {
	            bookItems.remove(isbn);
	        }
	        System.out.println("담기 : " + bookItems.toString()); 
	        session.setAttribute("mybox", bookItems);

	        return new ResponseEntity<>("200", HttpStatus.OK);
	    } catch (Exception e) {
	        System.out.println(e);
	        return new ResponseEntity<>(e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
	    }
	}


}
