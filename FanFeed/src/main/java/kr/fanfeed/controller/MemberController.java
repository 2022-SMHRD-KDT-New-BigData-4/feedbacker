package kr.fanfeed.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.fanfeed.entity.Member;
import kr.fanfeed.mapper.FanFeedMapper;

@Controller
public class MemberController {
	
	@Autowired
	FanFeedMapper mapper;
	
	// 회원가입
	@GetMapping("/join.do")
	public String join() {
		
		return "fanfeed/join";
	}
	
	// 회원가입 요청처리
	@PostMapping("/join.do")
	public String join(Member vo) {
		
		System.out.println("회원가입 : "+ vo.toString());
		
		mapper.join(vo);
		
		return "redirect:/temp.do";
	}
	
	// 로그인 페이지 이동
	@GetMapping("/login.do")
	public String login() {
		
		return "fanfeed/login";
	}
	
	// 로그인 요청처리
	@PostMapping("/login.do")
	public String login(Member vo, HttpSession session, Model model) {
		
		System.out.println("로그인 : "+ vo.toString());
		
		Member loginVO = mapper.login(vo);
		
		String url = "";
		if(loginVO==null) {
			model.addAttribute("loginFail", vo.getId());
			url = "fanfeed/login";
		}
		else {
			session.setAttribute("vo", loginVO);
			url ="redirect:/temp.do";
		}
		
		return url;
	}
	
	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/temp.do";
	}
	
	
	
	
	
}
