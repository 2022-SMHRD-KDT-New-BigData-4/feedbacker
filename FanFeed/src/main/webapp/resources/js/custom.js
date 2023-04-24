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

 // overlay search

    $('.search_toggle').on('click', function(e) {
        e.preventDefault();
        $('.search_toggle').toggleClass('active');
        $('.overlay').toggleClass('open');
        setTimeout(function(){
            $('.search-form .form-control').focus();
        },400);

    });

 // instafeed Js 

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
    slidesToShow: 5,
    slidesToScroll: 5,
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
 
 // post gallery

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

	// magnific Popup iframe

      $('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
          disableOn: 300,
          type: 'iframe',
          mainClass: 'mfp-fade',
          removalDelay: 160,
          preloader: false,
          fixedContentPos: false
      });

	// -----------------------------


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

		$(function categorymove(){
			$('#navbarDropdown3').click(function(){
				location.href="category.do";
			});
		
		});		
		
		function bookinfomove(){
			$('.book-main').click(function(){
				var isbn = $(this).find('.isbn').text();
				console.log(isbn);
				formMove("bookinfo.do" ,"isbn" , isbn)
			});
		
		}
		
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
		
		