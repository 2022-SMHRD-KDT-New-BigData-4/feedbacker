<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<% pageContext.setAttribute("newLineChar", "\n"); %>


<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>BookBox</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- theme meta -->
	<meta name="theme-name" content="revolve" />

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

	<header class="header-top bg-grey justify-content-center" style="margin-top: -548px;">
		<nav class="navbar navbar-expand-lg navigation">
			<div class="container">
				<a class="navbar-brand d-lg-none" href="index.html"><img src="images/logo.png" alt="" class="img-fluid"></a>

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
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="index.html">Home 1</a>
								<a class="dropdown-item" href="index-2.html">Home 2</a>
								<a class="dropdown-item" href="index-3.html">Home 3</a>
								<a class="dropdown-item" href="index-4.html">Home 4</a>
								<a class="dropdown-item" href="index-5.html">Home 5</a>
								<a class="dropdown-item" href="index-6.html">Home 6</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
								Blog Posts
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown2">
								<a class="dropdown-item" href="standard-fullwidth.html">Standard Fullwidth</a>
								<a class="dropdown-item" href="standard-left-sidebar.html">Standard Left Sidebar</a>
								<a class="dropdown-item" href="standard-right-sidebar.html">Standard Right Sidebar</a>
							</div>
						</li>

						<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" onclick="categorymove()" id="navbarDropdown3" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
								Category
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown3">
								<a class="dropdown-item" href="post-video.html">Video Formats</a>
								<a class="dropdown-item" href="post-audio.html">Audio Format</a>
								<a class="dropdown-item" href="post-link.html">Quote Format</a>
								<a class="dropdown-item" href="post-gallery.html">Gallery Format</a>
								<a class="dropdown-item" href="post-image.html">Image Format</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown4" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
								Post Formats
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown3">
								<a class="dropdown-item" href="post-video.html">Video Formats</a>
								<a class="dropdown-item" href="post-audio.html">Audio Format</a>
								<a class="dropdown-item" href="post-link.html">Quote Format</a>
								<a class="dropdown-item" href="post-gallery.html">Gallery Format</a>
								<a class="dropdown-item" href="post-image.html">Image Format</a>
							</div>
						</li>
						<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
						<li class="nav-item d-lg-none">
							<div class="search_toggle p-3 d-inline-block bg-white"><i class="ti-search"></i></div>
						</li>
					</ul>
				</div>

				<div class="text-right search d-none d-lg-block">
					<div class="search_toggle">
						<div id="empty">
							<input id="search" placeholder=" Search...">
							<button type="submit" id="submit"><i class="ti-search"></i></button>
						</div>
					</div>
				</div>
			</div>
		</nav>

	</header>

		<div class="container-fluid" id="container-fluid">
			<div class="row no-gutters" id="no-gutters" style="margin-top: 200px;">
				<div class="col-lg-10 col-sm-10 col-md-10">

						<div class="slider-item-content">
							<div class="post-thumb mb-4" id="noneBox">
								<a href="blog-single.html">
									<img src="${cpath }/resources/images/none.gif" alt="" id="none" class="img-fluid">
								</a>
								<h2>"검색한 책이름"에 대한 분석 정보가 없습니다.</h2>
								<h3>업데이트를 기다려주세요.</h3>
							</div>
						</div>
				</div>
			</div>
		</div>
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#8D7B68" fill-opacity="1" d="M0,32L60,69.3C120,107,240,181,360,197.3C480,213,600,171,720,154.7C840,139,960,149,1080,144C1200,139,1320,117,1380,106.7L1440,96L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path></svg>	</section>

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
	<script src="${cpath }/resources/js/custom.js"></script>

</body>

</html>