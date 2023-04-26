package kr.fanfeed.entity;

import lombok.Data;

@Data
public class Template_Criteria {
	
	private int page; // 현재페이지번호 page=2
	private int perPageNum; // 페이지당 몇개의 게시물
	
	public Template_Criteria() {
		this.page = 1;
		this.perPageNum = 3; // 조정
	}
	
	// 현재 페이지의 게시글의 시작번호 구하기
	public int getPageStart() {
		return (page-1)*perPageNum; // limit #{pageStart}, #{perPageNum}
	}
	
	
}
