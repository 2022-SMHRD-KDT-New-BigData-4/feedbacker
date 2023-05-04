package kr.fanfeed.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

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
   
   // 검색 인풋창 입력시 ajax
   @GetMapping("/search.do")
   public @ResponseBody String search(String type, String search) {
      
      List<Book> searchBook;
      if(type.equals("책 제목"))  {      
         // 책 체목으로 검색하는 쿼리문 작성
          searchBook = mapper.searchBookTitle(search);
          try {
             searchBook = searchBook.subList(0, 3); // 인덱스 0~2만 사용
         } catch (Exception e) {
            
         }
          
      } else {
         // ISBN 값으로 검색하는 쿼리문 작성(사용되지x)
          searchBook = mapper.searchBookIsbn(search);   
      }
      
      // 조회결과를 맵에 담고 json변환
      Map<String, Object> jsonMap = new HashMap<String, Object>();
      jsonMap.put("searchBook", searchBook);
      
      Gson gson = new Gson();
      gson.toJson(jsonMap);
      
      return gson.toJson(jsonMap);
   }
   
   // 검색창 제출시 이동
   @PostMapping("/search.do")
   public String searchMove(String type, String search) {
      
      String url = ""; // 이동 page 담을 변수
      List<Book> searchBook = null; // DB 검색후 담을 리스트
      
      if(type.equals("책 제목")){ // 검색타입 책제목
         searchBook = mapper.searchBookTitle(search); // DB 조회
          try {
             String isbn =  searchBook.get(0).getIsbn(); // 조회해온 0번째인덱스의 isbn 
             url = "redirect:/bookinfo.do?isbn="+isbn; // 이동 url 설정
         } catch (Exception e) { // 조회결과가 x 
            return "fanfeed/none"; // none페이지 리턴
         }
      }else { // 검색타입 ISBN
         searchBook = mapper.searchBookIsbn(search); // DB 조회
         if(searchBook.isEmpty()) { // 조회결과가 x 
            return "fanfeed/none"; // none페이지 리턴
         }
         String isbn = searchBook.get(0).getIsbn(); // 조회해온 0번째인덱스의 isbn 
         url = "redirect:/bookinfo.do?isbn="+isbn; // 이동 url 설정
      }
      return url;
   }
   
   // about페이지
   @RequestMapping("/about.do")
   public String aboutPage() {

      return "fanfeed/about";
   }
   
   // contact페이지
   @RequestMapping("/contact.do")
   public String contactPage() {
      
      return "fanfeed/contact";
   }

}