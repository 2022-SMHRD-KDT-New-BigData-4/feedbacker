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
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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

	<div class="header-logo py-5 d-none d-lg-block">
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
						<!-- <button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
							aria-controls="navbarNavDropdown" aria-expanded="false"
							aria-label="Toggle navigation"></button> -->
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

	<div class="best">
		<h2 style="margin-left: -200px; margin-bottom: -5px;">&#8976;</h2>
		<h1>베스트셀러</h1>
		<h2 style="margin-right: -200px; margin-top: -15px;">&#x2319;</h2>
	</div>

	<section class="slider mt-4 single-block-wrapper section-padding">
		<div class="container-fluid" id="container-fluid">
			<div class="row no-gutters" id="no-gutters">
				<div class="col-lg-10 col-sm-10 col-md-10 slider-wrap">
				
				<!-- 베스트 셀러 슬라이드 반복문 -->
				<c:forEach var="book" items="${bookBestList}" >
					<div class="slider-item book-main">
						<span class="isbn" style="display: none">${book.isbn }</span> <!-- 조회를 위한 isbn 안보이게 추가 -->
						<div class="slider-item-content" id="slider-item-content">
							<div class="post-thumb mb-4">
								<a onclick="bookinfomove()">
									<img src=${book.img } alt="" class="img-fluid">
								</a>
							</div>

							<div class="slider-post-content">
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">${book.category }</span>
								<h4 class="post-title mt-1">
									<a onclick="bookinfomove()">${book.title }</a>
								</h4>
								<span class=" text-muted  text-capitalize">${book.author } 저</span>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- 베스트 셀러 슬라이드 반복문 끝 -->
				</div>
			</div>
		</div>
	</section>
<!-- 베스트셀러 slid 끝 -->

	<div class="steady">
		<h2 style="margin-left: -200px; margin-bottom: -5px;">&#8976;</h2>
		<h1>스테디셀러</h1>
		<h2 style="margin-right: -200px; margin-top: -15px;">&#x2319;</h2>
	</div>

	<section class="section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="row slider-item" id="row">
					<!-- 스테디셀러 반복문 -->
					<c:forEach var="book" items="${bookList }" >
						<div class="col-lg-3 col-md-6 book-main sbookList">
							<span class="isbn" style="display: none">${book.isbn }</span>
							<article class="post-grid mb-5">
								<a class="post-thumb mb-4 d-block" onclick="bookinfomove()">
									<img src=${book.img } alt="" class="img-fluid w-100">
								</a>
								<span class="cat-name text-color font-extra text-sm text-uppercase letter-spacing-1">${book.category }</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">${book.title }</a></h3>

								<span class="text-muted letter-spacing text-uppercase font-sm">${book.author } 저</span>

							</article>
						</div>
					</c:forEach> 
					<!-- 스테디셀러 반복문 끝 -->	
					</div>
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
			</div>
			<form id="pageFrm" action="${cpath }/main.do" method="post">
                 <input type="hidden" id="page" name="page" value="${pm.cri.page }">
            </form> 
		</div>
	</section>
	<!-- 페이징처리 끝 -->	
	<!-- <section class="footer-2 section-padding gray-bg pb-5">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="subscribe-footer text-center">
						<div class="form-group mb-0">
							<h2 class="mb-3">Subscribe Newsletter</h2>
							<p class="mb-4">Subscribe my Newsletter for new blog posts , tips and info.
							<p>
							<div class="form-group form-row align-items-center mb-0">
								<div class="col-sm-9">
									<input type="email" class="form-control" placeholder="Email Address">
								</div>
								<div class="col-sm-3">
									<a href="#" class="btn btn-dark ">Subscribe</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="footer-btm mt-5 pt-4 border-top">
				<div class="row">
					<div class="col-lg-12">
						<ul class="list-inline footer-socials-2 text-center">
							<li class="list-inline-item"><a href="#">Privacy policy</a></li>
							<li class="list-inline-item"><a href="#">Support</a></li>
							<li class="list-inline-item"><a href="#">About</a></li>
							<li class="list-inline-item"><a href="#">Contact</a></li>
							<li class="list-inline-item"><a href="#">Terms</a></li>
							<li class="list-inline-item"><a href="#">Category</a></li>
						</ul>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<div class="copyright text-center ">
							@ copyright all reserved to <a href="https://themefisher.com/">themefisher.com</a>-2019 Distribution <a
								href="https://themewagon.com">ThemeWagon.</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->

	<!-- THEME JAVASCRIPT FILES
================================================== -->
	<!-- initialize jQuery Library -->
	<script src="${cpath }/resources/js/jquery.js"></script>
	<!-- Bootstrap jQuery -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
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