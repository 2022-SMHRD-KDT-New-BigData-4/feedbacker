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


	<div class="header-logo py-5 d-none d-lg-block" style="height: 544.88px;">
			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#8D7B68" fill-opacity="1" d="M0,224L48,208C96,192,192,160,288,165.3C384,171,480,213,576,234.7C672,256,768,256,864,229.3C960,203,1056,149,1152,133.3C1248,117,1344,139,1392,149.3L1440,160L1440,0L1392,0C1344,0,1248,0,1152,0C1056,0,960,0,864,0C768,0,672,0,576,0C480,0,384,0,288,0C192,0,96,0,48,0L0,0Z"></path></svg>	
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<a class="navbar-brand" onclick="mainmove()"><img src="${cpath }/resources/images/logo.png" alt="" class="img-fluid w-100" id="logo"></a>
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
						<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
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
						<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
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
							<input id="search" placeholder=" Search...">
							<button type="submit" id="submit">
								<i class="ti-search"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</nav>

	</header>

<section class="single-block-wrapper section-padding">
	<div class="container">
		<div class="row" style="margin-top: 200px;">
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="sidebar sidebar-right">
					<div class="sidebar-wrap mt-5 mt-lg-0">




	<div class="sidebar-widget mb-5 ">
		<h4 class="text-center widget-title">Best seller</h4>

		<div class="sidebar-post-item-big">
			<a href="blog-single.html"><img src="https://img.ridicdn.net/cover/3306000090/xxlarge?dpi=xxhdpi#1" alt="" class="img-fluid"></a>
			<div class="mt-3 media-body" id="media-body">
            	<h5 class="text-muted letter-spacing text-uppercase font-sm">2020.03.25. 전자책 출간</h5>
				<div><h4 ><a onclick="move()">개정 번역판 | 해리 포터와 마법사의 돌</a></h4></div>
                <h5>작가 이름</h5>
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
                <a href="#" >Innovation</a>
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
                                <h3 class="text-center widget-title">감성 연관어</h3>
                                <input type="hidden" id="selectedSentiment" value="all">
                                <div id="factorDetail" class="chart-wrap chart-reputation-bubble">
                                    <svg width="100%" height="100%" viewBox="0 0 350 330" preserveAspectRatio="xMinYMin meet" class="bubble">
                                        <g class="node" transform="translate(126.22340445964113,166.79076499519638)">
                                            <circle r="71.2206729731952" style="cursor: pointer; fill: #34231D; fill-opacity: 0.85;"></circle>
                                            <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 59.1394px;">
                                                좋다</text>
                                        </g>
                                        <g class="node" transform="translate(247.69049525056934,166.79076499519638)">
                                            <circle r="48.7793983353067" style="cursor: pointer; fill: #75554A; fill-opacity: 0.85;"></circle>
                                            <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 39.2956px;">
                                                멋진</text>
                                        </g>
                                        <g class="node" transform="translate(206.38165803073275,251.13718943322522)">
                                            <circle r="43.6723734220134" style="cursor: pointer; fill: #AF7C53; fill-opacity: 0.85;"></circle>
                                            <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 22.3827px;">
                                                멋지다</text>
                                        </g>
                                        <g class="node" transform="translate(206.33017716347626,82.78004907453935)">
                                            <circle r="43.39372475887171" style="cursor: pointer; fill: #34231D; fill-opacity: 0.85;"></circle>
                                            <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 21.2031px;">
                                                잘하다</text>
                                        </g>
                                        <g class="node" transform="translate(125.85255310031408,53.234786022071916)">
                                            <circle r="40.868892079470065" style="cursor: pointer; fill: #75554A; fill-opacity: 0.85;"></circle>
                                                <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 14.7708px;">
                                                    감사하다</text>
                                        </g>
                                            <g class="node" transform="translate(130.50667317967418,273.2979857809192)">
                                                <circle r="33.90562098582621" style="cursor: pointer; fill: #AF7C53; fill-opacity: 0.85;"></circle>
                                                    <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 15.9419px;">
                                                        잘들다</text>
                                                </g>
                                                <g class="node" transform="translate(283.41493598228254,91.86766242433403)">
                                                    <circle r="32.75784089492373" style="cursor: pointer; fill: #CD9A6E; fill-opacity: 0.85;"></circle>
                                                        <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 15.9419px;">
                                                            잘들다</text>
                                                    </g>
                                                    <g class="node" transform="translate(281.74880352377085,240.52264098998072)">
                                                        <circle r="30.971547560271137" style="cursor: pointer; fill: #34231D; fill-opacity: 0.85;"></circle>
                                                            <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 22.4027px;">
                                                                좋은</text>
                                                        </g>
                                                        <g class="node" transform="translate(70.79608070504756,251.20237459101804)">
                                                            <circle r="28.295019199165935" style="cursor: pointer; fill: #CD9A6E; fill-opacity: 0.85;"></circle>
                                                                <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 9.49243px;">
                                                                    아름다운</text>
                                                            </g>
                                                            <g class="node" transform="translate(64.13886665666614,87.31541193412322)">
                                                                <circle r="28.16279875979731" style="cursor: pointer; fill: #F45050; fill-opacity: 0.85;"></circle>
                                                                    <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 9.62999px;">
                                                                        좋은노래</text>
                                                            </g>
                                            <g class="node" transform="translate(64.13886665666614,87.31541193412322)">
                                                <circle r="28.16279875979731" style="cursor: pointer; fill: #AF7C53;fill-opacity: 0.85;"></circle>
                                                    <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 9.62999px;">
                                                        이거이거</text>
                                            </g>
                                	<g style="display: none;" transform="translate(204.41493598228254,91.86766242433403)"><rect class="tooltip-rect" rx="5" ry="5" height="17" style="fill: rgb(255, 255, 255); stroke-width: 2; stroke: rgb(88, 69, 234);" width="79"></rect>
                                        <text class="tooltip-text" style="stroke: rgb(51, 51, 51); font-size: 12px; text-anchor: middle;" x="39.5" y="12.592592592592592">
                                            사랑 : 575건</text>
                                    </g>
                                </svg></div>
                            </div>
						</div>
					</div>

					<div class="slider-item">
						<div class="slider-item-content">
							<div class="post-thumb mb-4">
								<a href="blog-single.html">
									<img src="https://via.placeholder.com/500x530.png?text=temp1" alt="" class="img-fluid">
								</a>
							</div>
							<div class="slider-post-content">
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">경영/경제</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">장하준의 경제학 레시피 : 마늘에서 초콜릿까지 18가지 재료로 요리한 경제 이야기</a></h3>
								<span class=" text-muted  text-capitalize">장하준 저 | 김희정 역</span>
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
		<br>
		
		<c:forEach var="i" begin="1" end="3">
		<div class="comment-area-box media" id="comment-area-box-l">

			<div class="media-body ml-4">
				<h4 class="mb-0">Micle harison ${i } </h4>
				<span class="date-comm font-sm text-capitalize text-color"><i class="ti-time mr-2"></i>June 7, 2019 </span>

				<div class="comment-content mt-3">
					<p>Lorem ipsum dolor sit amet, usu ut perfecto postulant deterruisset, libris causae volutpat at est, ius id modus laoreet urbanitas. Mel ei delenit dolores.</p>
				</div>
			<br>
			</div>
		</div>
		</c:forEach>
	</div>

    <div class="comment-area my-5" id="reviewarea-r">
		<h2 class="mb-4 text-center"><a>부정 리뷰</a></h2>
		<br>
		<br>
		
		<c:forEach var="i" begin="1" end="3">
		<div class="comment-area-box media" id="comment-area-box-r">

			<div class="media-body ml-4">
				<h4 class="mb-0">Micle harison ${i } </h4>
				<span class="date-comm font-sm text-capitalize text-color"><i class="ti-time mr-2"></i>June 7, 2019 </span>

				<div class="comment-content mt-3">
					<p>Lorem ipsum dolor sit amet, usu ut perfecto postulant deterruisset, libris causae volutpat at est, ius id modus laoreet urbanitas. Mel ei delenit dolores.</p>
				</div>
			<br>
			</div>
		</div>
		</c:forEach>
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
<nav class="post-pagination clearfix border-top border-bottom py-4 col-lg-12">
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
</nav>

<div class="related-posts-block mt-5" id="similer">
	<br>
	<br>
    <h3 class="news-title mb-4 text-center">
       연관 도서
    </h3>
    <br>
    <div class="row">
    <c:forEach var="i" begin="1" end="8">
        <div class="col-lg-3 col-md-3 col-sm-6">
            <div class="post-block-wrapper mb-4 mb-lg-0">
                <a href="blog-single.html">
                    <img class="img-fluid" src="https://via.placeholder.com/500x530.png?text=temp1" alt="post-thumbnail"/>
                </a>
                <div class="post-content mt-3">
                    <h4 >
                        <a href="blog-single.html">책 이름${i }</a>
                        
                    </h4>
                        <a href="blog-single.html">작가 이름${i }</a>
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
    <c:forEach var="i" begin="1" end="4">
        <div class="col-lg-3 col-md-3 col-sm-6">
            <div class="post-block-wrapper mb-4 mb-lg-0">
                <a href="blog-single.html">
                    <img class="img-fluid" src="https://via.placeholder.com/500x530.png?text=temp1" alt="post-thumbnail"/>
                </a>
                <div class="post-content mt-3">
                    <h4 >
                        <a href="blog-single.html">책 이름 ${i }</a>
                    </h4>
                        <a href="blog-single.html">작가 이름${i }</a>
                </div>
            </div>
        </div>
    </c:forEach>
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
<!-- anychart js -->
<script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
<script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>




</body>
</html>