package kr.fanfeed.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.fanfeed.mapper.FanFeedMapper;

@Controller
public class MainController {
	
	@Autowired
	FanFeedMapper mapper;
	
	@RequestMapping("/main.do")
	public String goMain(Model model) {
		
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
