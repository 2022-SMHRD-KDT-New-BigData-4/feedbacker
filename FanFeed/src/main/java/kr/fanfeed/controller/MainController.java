package kr.fanfeed.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.fanfeed.entity.Book;
import kr.fanfeed.entity.MainCriteria;
import kr.fanfeed.entity.MainPageMaker;
import kr.fanfeed.entity.ReviewCriteria;
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
	public String goMain(Model model, MainCriteria cri) {

		// 베스트셀러 책리스트 조회
		List<Book> bookBestList = mapper.getBestListBook();

		// 스테디셀러 책리스트 조회
		List<Book> bookList = mapper.getListBook(cri);

		// 페이징 처리에 필요한 객체를 생성 객체 생성
		MainPageMaker pageMaker = new MainPageMaker();
		pageMaker.setCri(cri);
		// 전체 글 카운트
		pageMaker.setTotalCount(mapper.totalBookCount());

		// 모델에 추가
		model.addAttribute("bookBestList", bookBestList);
		model.addAttribute("bookList", bookList);
		model.addAttribute("pm", pageMaker);

		return "fanfeed/index";
	}


	@RequestMapping("/category.do")
	public String goCategory(String category, Model model) {

		System.out.println(category);
		if (category == null) {
			category = "소설";
		}
		List<Book> bookList = mapper.getCategoryBook(category);

		model.addAttribute("bookList", bookList);
		model.addAttribute("category", category);

		return "fanfeed/category";
	}

}
