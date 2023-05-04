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
	<link rel="stylesheet" href="${cpath }/resources/css/barchart.css">
	
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jqcloud/1.0.4/jqcloud.min.css" />
	
</head>

<body>
<div class="loading">
	<span></span>
	<span></span>
	<span></span>
</div>

	<div class="header-logo py-5 d-none d-lg-block" style="height: 544.88px;">
			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#8D7B68" fill-opacity="1" d="M0,224L48,208C96,192,192,160,288,165.3C384,171,480,213,576,234.7C672,256,768,256,864,229.3C960,203,1056,149,1152,133.3C1248,117,1344,139,1392,149.3L1440,160L1440,0L1392,0C1344,0,1248,0,1152,0C1056,0,960,0,864,0C768,0,672,0,576,0C480,0,384,0,288,0C192,0,96,0,48,0L0,0Z"></path></svg>	
		<div class="container">
			<div class="row justify-content-center logo-wrap">
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
	                         <input id="search" placeholder=" Search..." name="search">
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
		<div class="row" style="margin-top: 200px;">
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="sidebar sidebar-right">
					<div class="sidebar-wrap mt-5 mt-lg-0">



	
	<div class="sidebar-widget mb-5 ">
		<h4 class="text-center widget-title">Best seller</h4>

		<div class="sidebar-post-item-big">
			<span href="blog-single.html"><img src=${book.img}  alt="" class="img-fluid"></span>
			<div class="mt-3 media-body" id="media-body">
            	<h5 class="text-muted letter-spacing text-uppercase font-sm">${book.datetime }</h5>
            	<span class="isbn" style="display: none">${book.isbn }</span> 
				<div><h4 >${book.title}</h4></div>
                <h5>${book.author} 저</h5>
			</div>
		</div>
        <br>
        <br>
        <br>

        <div class="sidebar-widget category mb-5" id="top10">
            <h4 class="text-center widget-title">감성어 TOP 10</h4>
             <ul class="list-unstyled">
             <c:forEach var="i" begin="1" end="10">
              <li class="align-items-center d-flex justify-content-between" id="toplist">
                <span>${i }</span>
                <a></a>
              </li>
              </c:forEach>
            </ul>
        </div>
	</div>
	

	
	
	
</div>
				</div>
			</div>
			
			<div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
				<div class="single-post">
    <div class="post-header mb-5 text-center">
        <div class="chart-area">
            <div id="container" style="width:100%; height:100%;"></div>
        </div>
    </div>


    <section class="slider mt-4">
		<div class="container-fluid" id="container-fluid">
			<div class="row no-gutters" id="no-gutters">
				<div class="col-lg-10 col-sm-10 col-md-10 slider-wrap">
					
					<div class="slider-item">
						<div class="slider-item-content">
                            <div class="reputation-bubble-box" style="text-align: center;">
                            	<div id="tooltip">
                                <h3 class="text-center widget-title">감성 연관어 <img src="${cpath }/resources/images/idea.png" id="idea" style="width: 25px; height: 25px;"> </h3>
                                <span class="tooltiptext tooltip-top">단어를 클릭해보세요!</span>
                                </div>
                                <input type="hidden" id="selectedSentiment" value="all">
                                <div id="factorDetail" class="chart-wrap chart-reputation-bubble">
                                <div id="wordcloud">
                                	
                                </div>
                                </div>
                            </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<br>
	<div>
    <div class="comment-area my-5" id="reviewarea-l">
		<h2 class="mb-4 text-center"><a>긍정 리뷰</a></h2>
		<br>
		<ul class="list-group list-group-flush" id="positive">
		</ul>
	</div>

    <div class="comment-area my-5" id="reviewarea-r">
		<h2 class="mb-4 text-center"><a>부정 리뷰</a></h2>
		<br>
		<ul class="list-group list-group-flush" id="negative">
		</ul>
	</div>
	</div>

 	<div class="m-auto" id="m-auto">
		<div class="pagination mt-5 pt-4">
			<ul class="list-inline ">
				<li class="list-inline-item"><a href="#" class="active">1</a></li>
				<li class="list-inline-item"><a href="#">2</a></li>
				<li class="list-inline-item"><a href="#">3</a></li>
				<li class="list-inline-item"><a href="#" class="prev-posts"><i class="ti-arrow-right"></i></a></li>
			</ul>
		</div>
	</div>

    </div>
</div>





    <div class="post-body">
        <div class="entry-content">
    </div>
</div>
				
<!-- <div class="post-author d-flex my-5">
	<div class="author-img">
		<img alt="" src="https://img.ridicdn.net/cover/3306000090/xxlarge?dpi=xxhdpi#1"  width="100" height="100">	
	</div>

	<div class="author-content pl-4">
		<h4 class="mb-3"><a href="#" title="" rel="author" class="text-capitalize">Themefisher</a></h4>
		<p>Hey there. My name is Liam. I was born with the love for traveling. I also love taking photos with my phone in order to capture moment..</p>
		
		<a target="_blank" class="author-social" href="#"><i class="ti-facebook"></i></a>
		<a target="_blank" class="author-social" href="#"><i class="ti-twitter"></i></a>
		<a target="_blank" class="author-social" href="#"><i class="ti-google-plus"></i></a>
		<a target="_blank" class="author-social" href="#"><i class="ti-instagram"></i></a>
		<a target="_blank" class="author-social" href="#"><i class="ti-pinterest"></i></a>
		<a target="_blank" class="author-social" href="#"><i class="ti-tumblr"></i></a>
	</div>
</div> -->
<!-- <nav class="post-pagination clearfix border-top border-bottom py-4 col-lg-12">
    <div class="prev-post">
        <a href="blog-single.html">
        	<span class="text-uppercase font-sm letter-spacing">Previous</span>
            <h4 class="mt-3">Free Two-Hour Delivery From Whole Foods</h4>
        </a>
    </div>
    <div class="next-post">
        <a href="blog-single.html">
            <span class="text-uppercase font-sm letter-spacing">Next</span>
            <h4 class="mt-3"> Intel’s new smart glasses actually look good</h4>
        </a>
    </div>
</nav> -->

<div class="related-posts-block mt-5" id="similer">
	<br>
	<br>
    <h3 class="news-title mb-4 text-center">
       연관 도서
    </h3>
    <br>
    <div class="row">
    <c:forEach var="i" items="${relation}" begin="1" end="8">
        <div class="col-lg-3 col-md-3 col-sm-6">
            <div class="post-block-wrapper mb-4 mb-lg-0">
                <a href="blog-single.html">
                    <img class="img-fluid" src="${i.img}" alt="post-thumbnail"/>
                </a>
                <div class="post-content mt-3">
                    <h4 >
                        <a href="blog-single.html">${i.title}</a>
                        
                    </h4>
                        <a href="blog-single.html">${i.author} 저</a>
                		<br>
                		<br>
                		<br>
                </div>
            </div>
        </div>
    </c:forEach>
    </div>
</div>

<br>
<br>

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
    </div>
</div>

			</div>
		</div>
	</div>
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
<script src="${cpath }/resources/js/bookdetail.js"></script>
<!-- anychart js -->
<script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
<script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqcloud/1.0.4/jqcloud-1.0.4.min.js"></script>

<!-- fontawesome icon -->
<script src="https://kit.fontawesome.com/4a8c96245b.js" crossorigin="anonymous"></script>

<!-- chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0"></script>
<!-- barchart -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<!-- 검색 js -->
<script src="${cpath }/resources/js/search.js"></script>

</body>
</html>