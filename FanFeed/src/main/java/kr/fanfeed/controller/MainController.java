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
	public String temp(Model model) {
		
		
		return "fanfeed/index";
	}
	
}
