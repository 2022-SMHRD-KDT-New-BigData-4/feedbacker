package kr.fanfeed.entity;

import lombok.Data;

// 페이징 처리를 하기 위해서 계산하는 클래스
@Data
public class MainPageMaker {
	
	private MainCriteria cri;
	private int totalCount; // 총게시글의 수
	private int startPage; // 시작페이지번호
	private int endPage; // 끝페이지번호(조정이 되어야 함)
	private boolean prev; // 이전버튼(true, false)
	private boolean next; // 다음버튼
	private int displayPageNum = 3; // 표시할 페이지 수 1 2 3 4 5 > / < 6 7 8 9 10 >
	
	// 구한 총게시글의 수를 세팅하는 메소드
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		makePaging();
	}

	// (페이징 처리에서 가장 중요한 부분)
	private void makePaging() {
		// 화면에 보여질 마지막 페이지 번호
		endPage = (int)(Math.ceil(cri.getPage()/(double)displayPageNum)*displayPageNum);
		
		// 화면에 보여질 시작 페이지 번호
		startPage = (endPage - displayPageNum)+1;
		if(startPage <=0) startPage = 1;
		
		// 전체 마지막 페이지 계산
		int tempEndPage = (int)(Math.ceil(totalCount/(double)cri.getPerPageNum()));
		
		// 화면에 보여질 마지막 페이지의 유효성 체크
		if(tempEndPage<endPage) {
			endPage = tempEndPage;
		}
		
		// 이전페이지 버튼 존재 여부
		prev = startPage==1 ? false : true;
		
		// 다음페이지 버튼 존재 여부
		next = endPage<tempEndPage ? true : false;
		
	}
	
}
