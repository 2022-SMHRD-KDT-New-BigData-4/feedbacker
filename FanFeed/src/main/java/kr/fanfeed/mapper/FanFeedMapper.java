package kr.fanfeed.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.fanfeed.entity.Book;
import kr.fanfeed.entity.MainCriteria;
import kr.fanfeed.entity.Member;
import kr.fanfeed.entity.Review;
import kr.fanfeed.entity.ReviewCriteria;

public interface FanFeedMapper {
	
	public void join(Member vo);
	
	public Member login(Member vo);
	
	// 베스트셀러 조회
	public List<Book> getBestListBook();
	
	// 스테디셀러 조회 + 페이징처리
	public List<Book> getListBook(MainCriteria cri);
	
	// 책 단건 조회
	public Book getOneBook(String isbn);
	
	// 게시물 전체 카운트
	public int totalBookCount();
	
	// 카테고리로 책 리스트 조회
	public List<Book> getCategoryBook(String category);
	
	// 카테고리로 책 리스트 조회
	public List<Review> getListReview(@Param("isbn") String isbn, @Param("cri") ReviewCriteria cri);
		
	// 게시물 전체 카운트
	public int totalReviewCount(String isbn);
	
	//  책 제목을 검색해서 조회
	public List<Book> searchBookTitle( String search);
	
	//  ISBN을 검색해서 조회
	public List<Book> searchBookIsbn( String search);
	
	// 북 인포에서 카테고리별 리스트 조회
	public List<Book> relationBook( @Param("category") String category, @Param("isbn") String isbn);

}
