package kr.fanfeed.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.fanfeed.entity.Book;
import kr.fanfeed.entity.Review;
import kr.fanfeed.entity.ReviewCriteria;
import kr.fanfeed.entity.ReviewPageMaker;
import kr.fanfeed.mapper.FanFeedMapper;

@Controller
public class InfoController {
	
	@Autowired
	FanFeedMapper mapper;
	
	@RequestMapping("/bookinfo.do")
	public String goBookinfo(String isbn, ReviewCriteria cri, Model model) {
		
		System.out.println("인포페이지 이동 isbn : "+isbn);
		
		Book book = mapper.getOneBook(isbn);
		
		List<Review> reviewList = mapper.getListReview(isbn, cri);
		
		// 페이징 처리에 필요한 객체를 생성 객체 생성
		ReviewPageMaker pageMaker = new ReviewPageMaker();
		pageMaker.setCri(cri);
		// 전체 글 카운트
		pageMaker.setTotalCount(mapper.totalReviewCount(isbn));

		model.addAttribute("book", book);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("pm", pageMaker);
		
		return "fanfeed/bookinfo";
	}
	
	@RequestMapping("/reviewAjax.do")
	public @ResponseBody String reviewAjax(String isbn, ReviewCriteria cri, Model model) {
		
		System.out.println(isbn);
		
		Book book = mapper.getOneBook(isbn);
		
		model.addAttribute("book", book);
		return "";
	}
	
	
	
	
	
}
