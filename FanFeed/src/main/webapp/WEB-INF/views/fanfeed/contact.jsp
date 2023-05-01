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
	<div></div>
<div style="height: 200px;"></div>

	<section class="single-block-wrapper section-padding">
		<div class="container">
			<div class="row" style="margin-top: 200px; justify-content: center;">
				

				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="single-post" style="margin-top: -200px">
						<div class="related-posts-block mt-5">
							<h2 class="news-title mb-4 text-center">
								Feed Backer
							</h2>
							<div class="row" style="text-align: center; margin-top: 60px;" id="aboutText">
								<div style="width: 25%; height: 300px; border-right: 1px solid rgba(0,0,0,0.1);">
									<h2>이지후 <a style="font-size: 20px;">팀장</a></h2>
									<h3>Lee Jihoo</h3>
									<br>
									<p>총괄 및 데이터 분석</p>
									<p>바보입네다..</p>
									<br>
									<p><img src="${cpath }/resources/images/email.png"> : gygh9604@naver.com</p>
									<p><img src="${cpath }/resources/images/phone.png"> : 010-6214-5316</p>
								</div>
								<div style="width: 25%; height: 300px; border-right: 1px solid rgba(0,0,0,0.1);">
									<h2>배재석 <a style="font-size: 20px;">팀원</a></h2>
									<h3>Bae Jaeseok</h3>
									<br>
									<p>데이터 분석</p>
									<p>크롤링 및 백엔드</p>
									<br>
									<p><img src="${cpath }/resources/images/email.png"> : qo12351@naver.com</p>
									<p><img src="${cpath }/resources/images/phone.png"> : 010-2573-6269</p>
								</div>
								<div style="width: 25%; height: 300px; border-right: 1px solid rgba(0,0,0,0.1);">
									<h2>박은혁 <a style="font-size: 20px;">팀원</a></h2>
									<h3>Park Eunhyeok</h3>
									<br>
									<p>데이터 전처리</p>
									<p>db설계 및 백엔드 및 서버연결</p>
									<br>
									<p><img src="${cpath }/resources/images/email.png"> : dpk971206@gmail.com</p>
									<p><img src="${cpath }/resources/images/phone.png"> : 010-7739-8070</p>

								</div>
								<div style="width: 25%; height: 300px;">
									<h2>양어진 <a style="font-size: 20px;">팀원</a></h2>
									<h3>Yang Eojin</h3>
									<br>
									<p>UI, UX 제작 및 프론트엔드</p>
									<p>워드 클라우드 및 차트 구현</p>
									<br>
									<p><img src="${cpath }/resources/images/email.png"> : ryumuil2947@naver.com</p>
									<p><img src="${cpath }/resources/images/phone.png"> : 010-6569-5717</p>
								</div>
							</div>
						</div>
					</div>
				</div>





			</div>
		</div>
		</div>
	</section>


	<svg style="margin-top: -100px;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#8D7B68" fill-opacity="1" d="M0,32L60,69.3C120,107,240,181,360,197.3C480,213,600,171,720,154.7C840,139,960,149,1080,144C1200,139,1320,117,1380,106.7L1440,96L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path></svg>	</section>

	
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