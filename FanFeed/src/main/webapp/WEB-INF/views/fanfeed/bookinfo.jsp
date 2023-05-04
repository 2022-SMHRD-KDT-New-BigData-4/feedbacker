<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<% pageContext.setAttribute("newLineChar", "\n"); %>

<!DOCTYPE html>

<!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->

<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Revolve - Personal Magazine blog Template</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!--Favicon-->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    
    <!-- THEME CSS
	================================================== -->
	<!-- Bootstrap -->
	<link rel="stylesheet" href="${cpath }/resources/css/bootstrap.min.css">
	<!-- Themify -->
	<link rel="stylesheet" href="${cpath }/resources/css/themify-icons.css">
	<link rel="stylesheet" href="${cpath }/resources/css/slick-theme.css">
	<link rel="stylesheet" href="${cpath }/resources/css/slick.css">
	<!-- Slick Carousel -->
	<link rel="stylesheet" href="${cpath }/resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${cpath }/resources/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="${cpath }/resources/css/magnific-popup.css">
	<!-- manin stylesheet -->
	<link rel="stylesheet" href="${cpath }/resources/css/style.css">
	<link rel="stylesheet" href="${cpath }/resources/css/myCss.css">
	
</head>

<body>
<button id="scroll-top-btn"><i class="ti-arrow-circle-up" style=""></i></button>
<!-- 모달 창 -->
<div class="modal fade" id="imageModal" tabindex="-1" role="dialog" aria-labelledby="imageModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="imageModalLabel">이미지 크게 보기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <img src="" alt="" class="img-fluid">
      </div>
    </div>
  </div>
</div>
<!-- 모달 창 끝 -->

	<div class="header-logo py-5 d-none d-lg-block" style="height: 544.88px;">
			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#8D7B68" fill-opacity="1" d="M0,224L48,208C96,192,192,160,288,165.3C384,171,480,213,576,234.7C672,256,768,256,864,229.3C960,203,1056,149,1152,133.3C1248,117,1344,139,1392,149.3L1440,160L1440,0L1392,0C1344,0,1248,0,1152,0C1056,0,960,0,864,0C768,0,672,0,576,0C480,0,384,0,288,0C192,0,96,0,48,0L0,0Z"></path></svg>	
		<div class="logo-posi">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center logo-center">
					<a id="logo" class="navbar-brand" onclick="mainmove()"><img src="${cpath }/resources/images/logo.png" alt="" class="img-fluid w-100" style="width: 320px;"></a>
				</div>
			</div>
		</div>
	</div>

	<header class="header-top bg-grey justify-content-center">
		<nav class="navbar navbar-expand-lg navigation">
			<div class="container">
				<a class="navbar-brand d-lg-none" href="index.html"><img src="images/logo.png" alt="" class="img-fluid w-100"></a>

				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent"
					aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="ti-menu"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarContent">
					<ul id="menu" class="menu navbar-nav ">
						<li class="nav-item dropdown  pl-0">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
								Home
							</a>
						</li>
						<li class="nav-item"><a onclick="aboutmove()" class="nav-link" id="about">About</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" onclick="categorymove()" id="navbarDropdown3" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
								Category
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown3">
		                        <a class="dropdown-item" href="#">소설</a>
		                        <a class="dropdown-item" href="#">자기계발</a>
		                        <a class="dropdown-item" href="#">경영/경제</a>
		                        <a class="dropdown-item" href="#">인문/사회/역사</a>
		                        <a class="dropdown-item" href="#">에세이/시</a>
		                        <a class="dropdown-item" href="#">과학/IT</a>
		                        <a class="dropdown-item" href="#">가정/생활</a>
		                     </div>
						</li>
						<li class="nav-item"><a onclick="contactmove()" class="nav-link" id="contact">Contact</a></li>
						<li class="nav-item d-lg-none">
							<div class="search_toggle p-3 d-inline-block bg-white"><i class="ti-search"></i></div>
						</li>
					</ul>
				</div>

				<div class="text-right search d-none d-lg-block">
					<div class="container">
						<div class="collapse navbar-collapse" id="search_toggle">
							<ul class="navbar-nav">
								<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" id="title-link" href="#" role="button"
									data-bs-toggle="dropdown" aria-expanded="false">책 제목</a>
									<ul class="dropdown-menu dropdown-menu">
										<li><a class="dropdown-item" id="isbn-link" href="#">ISBN</a></li>
									</ul></li>
							</ul>
			                <form action="${cpath}/search.do"  method="post">
	                        <!--   HTML 코드-->
	                        <input type="hidden" id="hidden-category"  name="type" value="책 제목">
	                         <input id="search" placeholder=" Search..." name="search" required>
	                        <button type="submit" id="submit">
	                     <i class="ti-search"></i>
	                  </button>
	                  </form> 
						</div>
					</div>
				</div>
			</div>
		</nav>

	</header>
	<!-- 검색 결과 div -->
	<div class="card list-group" id="search-result" style="position: absolute; top:70px; right: 355px; width: 450px; height: 415px; z-index: 9999; border-radius: 20px; overflow: hidden; display: none">
			<div id="search-list" class="row">
			
			</div>
	</div>
	<!-- 검색 결과 div 끝 -->
<div style="height: 200px;"></div>

<section class="single-block-wrapper section-padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="sidebar sidebar-right">
					<div class="sidebar-wrap mt-5 mt-lg-0">




	<div class="sidebar-widget mb-5 ">
		<c:if test="${book.seq <=10 }">
		<h4 class="text-center widget-title" id="bookType">Best Seller</h4>
		</c:if>
		<c:if test="${book.seq >10}">
		<h4 class="text-center widget-title" id="bookType">Steady Seller</h4>
		</c:if>
		<div class="sidebar-post-item-big">
			<span class="isbn" style="display: none">${book.isbn }</span> 
			<a id="book-img" href="#"><img src=${book.img } alt="" class="img-fluid"></a>
			<div class="mt-3 media-body" id="media-body">
				<c:if test="${book.yn_3d eq 'y'}">
					<button onclick="imgView()" class="btn btn-primary" >3d VIEW</button>
				</c:if>
			</div>
		</div>
        <br>
        <br>
        <br>

	</div>
	

	
	
	
</div>
				</div>
			</div>
			
			
<div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
  <div class="single-post">
    <div class="post-header mb-5">
        <br>
        <br>

        <div class="post-meta" id="post-meta">
	        <h5 class="post-title mt-2">
	            ${book.category }
	        </h5>
            <h2>${book.title }</h2>
            <h5>${book.author } 저</h5>
            <h5>출판사 | ${book.publisher }</h5>
            
            
           <!-- 베스트셀러& 스테디셀러 -->
          <c:if test="${book.seq <=10 }">
		<button onclick="move()" class="btn btn-primary" id="detailbtn">분석하기</button>
		</c:if>
		<c:if test="${book.seq >10 }">
		<button onclick="move()" class="btn btn-secondary" id="detailbtn" disabled>분석하기</button>
		<div id="tooltipwarning">
             <h3 class="text-center widget-title"><img src="${cpath }/resources/images/warning-sign.png" id="warning" style="width: 25px; height: 25px;"> </h3>
             <span class="warningtext tooltip-top">스테디셀러의 분석을 위해서는 결제가 필요합니다.</span>
             </div>
		</c:if>
            
            
            
            
            
            <hr>
        </div>
        <div id="textbox">
        	<br>
        	<h2>작품 소개</h2>
        	<br>
        	<br>
        	<div id="textcontent">
        		${book.content }
			</div>
        </div>
        
        <br>
		<br>
        <div class="chart-area">
            <div id="container" style="width:100%; height:100%;"></div>
        </div>
    </div>
	<hr>


    </div>
</div>





    <div class="post-body">
        <div class="entry-content">
<div class="related-posts-block mt-5" id="similer">
	<br>
	<br>
		
	<div class="comment-area my-5">
		<br>
		<h2 class="mb-4 text-center">리뷰</h2>
		<hr>
		<c:if test="${empty reviewList }">
			<br>
			<h3>리뷰가 없습니다.</h3>
		</c:if>
		<!-- 리뷰 반복문 -->
		<c:forEach var="review" items="${reviewList }">
		<div class="comment-area-box media row">

				<div class="col-lg-3" style="border-right: 1px solid rgba(0,0,0,0.1);">
					<p class="mb-2"> <!-- 평점 별 -->
					  <c:forEach begin="1" end="${review.score}"> <!-- 금색별 -->
					    <i class="fa-solid fa-star" style="color: goldenrod"></i> 
					  </c:forEach>
					  <c:forEach begin="1" end="${5-review.score}"> <!-- 회색별 -->
					    <i class="fa-solid fa-star" style="color: gray"></i>
					  </c:forEach>
					</p> <!-- 평점 별 끝 -->
					<h4 class="mb-0"><i class="fa-solid fa-user mr-1"></i> ${review.writer } </h4>
					<span class="date-comm font-sm text-capitalize text-color"><i class="ti-time mr-2"></i>${review.datetime } </span>
				</div>	
					
				<div class="comment-content mt-3 col-lg-9" id="reviewText" style="text-align: start;">
					<p>${review.review }</p>
				</div>
		</div>
		<hr>
		</c:forEach>
		<!-- 리뷰 반복문 끝 -->
	</div>

 	<!-- 페이징처리 -->	
		<div class="m-auto">
			<div class="pagination mt-5 pt-4">
				<ul class="list-inline ">
					<c:if test="${pm.prev }">
						<li class="list-inline-item page-item"><a href="${pm.startPage - 1 }" class="prev-posts"><i class="ti-arrow-left"></i></a></li>
					</c:if>
					<c:forEach var="pageNum" begin="${pm.startPage}" end="${pm.endPage}">
						<li class="list-inline-item page-item"><a href="${pageNum}" class=" ${pm.cri.page==pageNum ? 'active' : ''}">${pageNum}</a></li>
					</c:forEach>
					<c:if test="${pm.next }">
						<li class="list-inline-item page-item"><a href="${pm.endPage + 1 }" class="prev-posts"><i class="ti-arrow-right"></i></a></li>
					</c:if>
				</ul>
			</div>
		</div>
		<!-- 페이징 끝 -->	
	
			<!-- 연관도서 리뷰 -->
		    <h3 class="news-title mb-4 text-center">
		       연관 도서
		    </h3>
		    <br>
		    <div class="row">
		    <c:forEach var="i"  items="${relation}" begin="1" end="10">
		        <div class="col-lg-3 col-md-3 col-sm-6"  onclick="formMove('bookinfo.do','isbn','${i.isbn}')">
		            <div class="post-block-wrapper mb-4 mb-lg-0">
		                <span href="blog-single.html">
		                    <img class="img-fluid" src="${i.img}" alt="post-thumbnail"/>
		                </span>
		                <div class="post-content mt-3">
		                    <h4 >
		                        <span href="blog-single.html">${i.title}</span>
		                        
		                    </h4>
		                        <span href="blog-single.html">${i.author} 저</span>
		                		<br>
		                		<br>
		                		<br>
		                </div>
		            </div>
		        </div>
		    </c:forEach>
   <!--      <div class="col-lg-3 col-md-3 col-sm-6">
            <div class="post-block-wrapper mb-4 mb-lg-0">
                <a href="blog-single.html">
                    <img class="img-fluid" src="images/fashion/img-2.jpg" alt="post-thumbnail"/>
                </a>
                <div class="post-content mt-3">
                    <h5 >
                        <a href="blog-single.html">Free Two-Hour Delivery From Whole Foods</a>
                    </h5>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6">
            <div class="post-block-wrapper">
                <a href="blog-single.html">
                    <img class="img-fluid" src="images/fashion/img-3.jpg" alt="post-thumbnail"/>
                </a>
                <div class="post-content mt-3">
                    <h5 >
                        <a href="blog-single.html">Snow and Freezing Rain in Paris Forces the</a>
                    </h5>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6">
            <div class="post-block-wrapper">
                <a href="blog-single.html">
                    <img class="img-fluid" src="images/fashion/img-3.jpg" alt="post-thumbnail"/>
                </a>
                <div class="post-content mt-3">
                    <h5 >
                        <a href="blog-single.html">Snow and Freezing Rain in Paris Forces the</a>
                    </h5>
                </div>
            </div>
        </div> -->
    </div>
</div>

<br>
<br>

<!-- 대표도서  -->
<div class="related-posts-block mt-5" id="represent">
    <h3 class="news-title mb-4 text-center">
       대표 저서
    </h3>
    <br>
    <div class="row">
    <!-- 첫번째 도서 -->
<c:if test="${not empty book.other_img1}">
        <div class="col-lg-3 col-md-3 col-sm-6">
            <div class="post-block-wrapper mb-4 mb-lg-0">
                <span href="blog-single.html">
                    <img class="img-fluid" src="${book.other_img1}" alt="post-thumbnail"/>
                </span>
                <div class="post-content mt-3">
                    <h4 >
                        <span href="blog-single.html">${book.other_book1}</span>
                    </h4>                 
                </div>
            </div>
        </div>
 </c:if>       
 <!-- 두번째 도서 -->
 <c:if test="${not empty book.other_img2}">
                <div class="col-lg-3 col-md-3 col-sm-6">
            <div class="post-block-wrapper mb-4 mb-lg-0">
                <span href="blog-single.html">
                    <img class="img-fluid" src="${book.other_img2}" alt="post-thumbnail"/>
                </span>
                <div class="post-content mt-3">
                    <h4 >
                        <span href="blog-single.html">${book.other_book2}</span>
                    </h4>
                </div>
            </div>
        </div>
         </c:if> 
         <!-- 세번째 도서 -->
         <c:if test="${not empty book.other_img3}">
                <div class="col-lg-3 col-md-3 col-sm-6">
            <div class="post-block-wrapper mb-4 mb-lg-0">
                <span href="blog-single.html">
                    <img class="img-fluid" src="${book.other_img3}" alt="post-thumbnail"/>
                </span>
                <div class="post-content mt-3">
                    <h4 >
                        <span href="blog-single.html">${book.other_book3}</span>
                    </h4>
                </div>
            </div>
        </div>
           </c:if>    
                    <c:if test="${not empty book.other_img4}">
         <!-- 네번째 도서 -->
                <div class="col-lg-3 col-md-3 col-sm-6">
            <div class="post-block-wrapper mb-4 mb-lg-0">
                <span href="blog-single.html">
                    <img class="img-fluid" src="${book.other_img4}" alt="post-thumbnail"/>
                </span>
                <div class="post-content mt-3">
                    <h4 >
                        <span href="blog-single.html">${book.other_book4}</span>
                    </h4>                    
                </div>
            </div>
        </div>
   </c:if> 
</section>
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#8D7B68" fill-opacity="1" d="M0,32L60,69.3C120,107,240,181,360,197.3C480,213,600,171,720,154.7C840,139,960,149,1080,144C1200,139,1320,117,1380,106.7L1440,96L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path></svg>	</section>



    

<!--footer end-->

<!-- THEME JAVASCRIPT FILES
================================================== -->

<!-- initialize jQuery Library -->
<script src="${cpath }/resources/js/jquery.js"></script>
<!-- Bootstrap jQuery -->
<script src="${cpath }/resources/js/bootstrap.min.js"></script>
<script src="${cpath }/resources/js/popper.min.js"></script>
<!-- Owl caeousel -->
<script src="${cpath }/resources/js/owl.carousel.min.js"></script>
<script src="${cpath }/resources/js/slick.min.js"></script>
<script src="${cpath }/resources/js/magnific-popup.js"></script>
<!-- Instagram Feed Js -->
<script src="${cpath }/resources/js/instafeed.min.js"></script>
<!-- main js -->
<script src="${cpath }/resources/js/left-custom.js"></script>
<!-- anychart js -->
<script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
<script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>

<!-- fontawesome icon -->
<script src="https://kit.fontawesome.com/4a8c96245b.js" crossorigin="anonymous"></script>

<!-- 검색 js -->
<script src="${cpath }/resources/js/search.js"></script>

</body>
</html>