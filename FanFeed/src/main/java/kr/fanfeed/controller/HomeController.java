package kr.fanfeed.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.fanfeed.entity.DBtest;
import kr.fanfeed.mapper.FanFeedMapper;

@Controller
public class HomeController {
	
	@Autowired
	FanFeedMapper mapper;
	
	@RequestMapping("/temp.do")
	public String temp(Model model) {
		
		DBtest testVO = mapper.dbconntest();
		
		model.addAttribute("vo", testVO);
		
		return "fanfeed/template";
	}
	
}
