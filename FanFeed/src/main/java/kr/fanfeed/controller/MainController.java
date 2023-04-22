package kr.fanfeed.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.fanfeed.entity.Book;
import kr.fanfeed.mapper.FanFeedMapper;

@Controller
public class MainController {
	
	@Autowired
	FanFeedMapper mapper;
	
	// 서버시작시 / url 바로 메인이동
	@RequestMapping("/")
	public String startPage() {
		
		return "redirect:/main.do";
	}
	
	// 메인페이지
	@RequestMapping("/main.do")
	public String goMain(Model model) {
		
		// 메인페이지에 뿌려질 책리스트 조회
		List<Book> bookList = mapper.getListBook();
		
		// 모델에 추가
		model.addAttribute("bookList", bookList);
		
		return "fanfeed/index";
	}
	
	@RequestMapping("/bookdetail.do")
	public String goBookDetail(Model model) {
		
		return "fanfeed/bookdetail";
	}
	
	@RequestMapping("/category.do")
	public String goCategory(Model model) {
		
		return "fanfeed/category";
	}
	
	@RequestMapping("/bookinfo.do")
	public String goBookinfo(Model model) {
		
		return "fanfeed/bookinfo";
	}
	
}
