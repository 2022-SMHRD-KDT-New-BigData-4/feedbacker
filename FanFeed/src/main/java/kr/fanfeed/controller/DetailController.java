package kr.fanfeed.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.fanfeed.entity.Book;
import kr.fanfeed.mapper.FanFeedMapper;

@Controller
public class DetailController {
	
	@Autowired
	FanFeedMapper mapper;
	
	@RequestMapping("/bookdetail.do")
	public String goBookDetail(Model model, String isbn) {
		
		Book book = mapper.getOneBook(isbn);
		
		model.addAttribute("book", book);
		
		return "fanfeed/bookdetail";
	}
}
