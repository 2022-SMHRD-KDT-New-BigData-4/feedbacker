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
	<title>None</title>
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
		<div class="container-fluid" id="container-fluid">
			<div class="row no-gutters" id="no-gutters" style="margin-top: 200px;">
				<div class="col-lg-10 col-sm-10 col-md-10">

						<div class="slider-item-content">
							<div class="post-thumb mb-4" id="noneBox">
								<a>
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