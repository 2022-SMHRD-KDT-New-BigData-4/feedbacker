package kr.fanfeed.entity;

import lombok.Data;

@Data
public class ReviewCriteria {
	
	private int page; // 현재페이지번호 page=2
	private int perPageNum; // 페이지당 몇개의 게시물
	
	public ReviewCriteria() {
		this.page = 1;
		this.perPageNum = 4; // 조정
	}
	
	// 현재 페이지의 게시글의 시작번호 구하기
	public int getPageStart() {
		return 1 + (page-1)*perPageNum; // limit #{pageStart}, #{perPageNum}
	}
	
	
}
