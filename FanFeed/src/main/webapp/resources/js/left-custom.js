/**
 * WEBSITE: https://themefisher.com
 * TWITTER: https://twitter.com/themefisher
 * FACEBOOK: https://www.facebook.com/themefisher
 * GITHUB: https://github.com/themefisher/
 */


(function ($) { 
	'use strict';
	/* ----------------------------------------------------------- */
	/*  Site search
	/* ----------------------------------------------------------- */

 /* overlay search */

    $('.search_toggle').on('click', function(e) {
        e.preventDefault();
        $('.search_toggle').toggleClass('active');
        $('.overlay').toggleClass('open');
        setTimeout(function(){
            $('.search-form .form-control').focus();
        },400);

    });

 /* instafeed Js */

 if (($('#instafeed').length) !== 0) {
    var userId = $('#instafeed').attr('data-userId');
    var accessToken = $('#instafeed').attr('data-accessToken');
      var userFeed =  new Instafeed({
      get: 'user',
      userId: '8987997106',
      resolution: 'standard_resolution',
      accessToken: '8987997106.924f677.8555ecbd52584f41b9b22ec1a16dafb9',
      limit: 4,
      template: '<div class="instagram-post col-lg-3 col-md-3 col-sm-6 col-6" id="{{id}}" ><a href="{{link}}" target="_blank" ><img src="{{image}}" class="img-fluid w-100"/><div class="intsa-meta"><span>{{likes}}</span><span>{{comments}}</span></div></a></div>'

      });
    userFeed.run();
  }


/* ----------------------------------------------------------- */
  /*  Slick Carousel
  /* ----------------------------------------------------------- */

  $('.slider-wrap').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplaySpeed: 4000,
    items:3,
    loop:true,
    autoplay:true,
    dots:true,
    responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow:3,
            slidesToScroll: 3,
            infinite: true,
            dots: true
          }
        },
        {
          breakpoint: 900,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2
          }
        },{
          breakpoint: 600,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
      
      ]
  });
 
 /* post gallery */

        $('.post_gallery').owlCarousel({
            loop:true,
            margin:1,
            nav:true,
            dots: false,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:1
                },
                1000:{
                    items:1
                }
            }
        });
	


	$('.post-slide').slick({
		fade: true,
    autplay:true
	});		

	/* magnific Popup iframe */

      $('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
          disableOn: 300,
          type: 'iframe',
          mainClass: 'mfp-fade',
          removalDelay: 160,
          preloader: false,
          fixedContentPos: false
      });

	/* ----------------------------- */


	/* ----------------------------------------------------------- */
	/*  Scroll To Top
	/* ----------------------------------------------------------- */
	$(window).scroll(function () {
		if ($(this).scrollTop() > 500) {
			$('.scroll-to-top').fadeIn();
		} else {
			$('.scroll-to-top').fadeOut();
		}
	});

})(jQuery);


		$(function mainmove(){
			$('#logo').click(function(){
				location.href="main.do";
			});
		
		});
		
		$(function mainmove(){
			$('#navbarDropdown').click(function(){
				location.href="main.do";
			});
		
		});
		
		$(function move(){
			$('#detailbtn').click(function(){
				var isbn = $('.isbn').text()
				
				 formMove("bookdetail.do",'isbn', isbn);
			});
		
		});
		
		$(function contactmove() {
		$('#contact').click(function() {
				location.href = "contact.do";
			});
		
		});
		
		$(function aboutmove() {
			$('#about').click(function() {
				location.href = "about.do";
			});
		
		});

		$(function categorymove() {
			$('#navbarDropdown3').click(function() {
				location.href = "category.do";
			});
		
		});
		
		$(function categorymove(){
			$('#navbarDropdown3').click(function(){
				location.href="category.do";
			});
		
		});	
		
		 $(document).ready(function(){

    $('#textbox').each(function(){
        var content = $(this).children('#textcontent');
        var content_html = content.html();
        var content_html_short = content_html.slice(0, 500)+"...";
        var btn_more = $('<a href="javascript:void(0)" class="more">∨</a>');

        $(this).append(btn_more);

        if(content_html.length >= 500){
            content.html(content_html_short)
        }else{
            btn_more.hide()
        }

        btn_more.click(toggle_content);

        $(btn_more).css({
            "float": "right",
            "font-size": "20px"
        });

        function toggle_content(){
            if($(this).hasClass('short')){
                // 접기 상태
                $(this).html('∨');
                content.html(content_html_short);
                $(this).removeClass('short');
            }else{
                // 더보기 상태
                $(this).html('∧');
                content.html(content_html);
                $(this).addClass('short');
            }
        }
    });
});

		// 카테고리 클릭 로직
		$(".ct-li").on("click",function(e){
			console.log("클릭 들어옴");
			e.preventDefault(); // a 태그의 기능을 막음
			var category = $(this).text();
			console.log(category);
			formMove("category.do" ,"category" , category)
		});
		
		function formMove(url, key, value){
		// 요청을 보낼 form 동적 생성
		var form = $('<form></form>');
		form.attr('method', 'post');
		form.attr('action', url);
		
		// POST로 보낼 데이터 추가
		var data1 = $('<input type="hidden" name="'+key+'" />');
		data1.attr('value', value);
		form.append(data1);
		
//		var data2 = $('<input type="hidden" name="key2" />');
//		data2.attr('value', 'value2');
//		form.append(data2);
		
		// form을 body에 추가하고 submit
		form.appendTo($('body'));
		form.submit();
		}
		
	
$('#isbn-link').click(function() {
  if ($('#title-link').text() === '책 제목') {
    $('#title-link').text('ISBN');
    $('#isbn-link').text('책 제목');
  } else {
    $('#title-link').text('책 제목');
    $('#isbn-link').text('ISBN');
  }
});

	// 페이징 처리
	$(document).on('click', '.pagination a', function(e) {
		e.preventDefault(); // a 태그의 기능을 막음
		var page = $(this).attr("href");
		var isbn = $(".isbn").text();
		$.ajax({
				url : "reviewAjax.do",
				type : "post",
				data : {page:page,isbn:isbn},
				dataType : "json",
				success : updatePage,
				error : function () { alert("에러"); }
			});
			
		})
	
	// 리뷰 페이지 ajax 성공 함수
	function updatePage(data) {
	  // 댓글 목록 업데이트
	  $('.comment-area-box + hr').remove();
	  $('.comment-area-box').remove();
	  $.each(data.reviewList, function(index, review) {
		var leftStackTag = "";
	    var $row_div = $('<div class="comment-area-box media row"></div>');
		var $left_div = $('<div class="col-lg-3" style="border-right: 1px solid rgba(0,0,0,0.1);"></div>');
		leftStackTag += '<p class="mb-2">'; // 별점 담을 p태그
		for(var i = 1;i<=review.score;i++){ // 금색별 반복문
			leftStackTag += '<i class="fa-solid fa-star" style="color: goldenrod"></i> ';
		}
		for(var i = 0;i<5-review.score;i++){ // 회색별 반복문
			leftStackTag += '<i class="fa-solid fa-star" style="color: gray"></i> ';
		}
		leftStackTag += '<h4 class="mb-0"><i class="fa-solid fa-user mr-1"></i>'+review.writer+'</h4>'; // 유저아이콘 + 작성자ID
		leftStackTag += '<span class="date-comm font-sm text-capitalize text-color"><i class="ti-time mr-2"></i>'+review.datetime+'</span>'; // 작성일
	    $left_div.append(leftStackTag);
		$row_div.append($left_div);
		
		var $right_div = '<div class="comment-content mt-3 col-lg-9" id="reviewText" style="text-align: start;"><p>'+review.review+'</p></div>';
	    $row_div.append($right_div);

		$(".comment-area").append($row_div);
		$(".comment-area").append('<hr>');
	  });
	
	  // 페이지 버튼 업데이트
	  var $pagination = $('.list-inline');
	  $pagination.empty();
	  if (data.pm.prev) {
	    $pagination.append('<li class="list-inline-item page-item" style="margin-right: 13px;"><a href="' + (data.pm.startPage - 1) + '" class="prev-posts"><i class="ti-arrow-left"></i></a></li>');
	  }
	  
	  for (var i = data.pm.startPage; i <= data.pm.endPage; i++) {
	    var $pageItem = $('<li class="list-inline-item page-item" style="margin-right: 13px;"></li>');
	    if (data.pm.cri.page == i) {
	      $pageItem.append('<a class="active" href="' + i + '">' + i + '</a>');
	    } else {
	      $pageItem.append('<a href="' + i + '">' + i + '</a>');
	    }
	    $pagination.append($pageItem);
	  }
	  
	  if (data.pm.next) {
	    $pagination.append('<li class="list-inline-item page-item"><a href="' + (data.pm.endPage + 1) + '" class="prev-posts"><i class="ti-arrow-right"></i></a></li>');
	  }
}
	
	// 새창에 3d이미지 창 로드
	function imgView(){
		var isbn = $('.isbn').text();
		var newWindow = window.open('imgView.do?isbn='+isbn, '_blank');
	}
	
// 카테고리 클릭 로직
$(".dropdown-item").on("click", function(e) {
	e.preventDefault(); // a 태그의 기능을 막음
	var category = $(this).text();

	console.log("드롭다운:", category);

	if (category === "책 제목" || category === "ISBN") {
		changeCategory();
	} else {
		formMove("category.do", "category", category)
	}

	function changeCategory() {
		if ($('#title-link').text() === '책 제목') {
			$('#title-link').text('ISBN');
			$('#isbn-link').text('책 제목');
			$('#hidden-category').val('ISBN');
		} else {
			$('#title-link').text('책 제목');
			$('#isbn-link').text('ISBN');
			$('#hidden-category').val('책 제목');
		}
	}
});

// 인포페이지 메인 북 이미지 클릭시 크게보는 모달창
 $('#book-img').on('click', function(e) {
    	e.preventDefault();
     	var src = $(this).find('img').attr('src')
     	$('.modal-body>img').attr('src',src)
      $('#imageModal').modal('show');
    });