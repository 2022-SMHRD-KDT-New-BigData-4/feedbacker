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

	<div class="best">
		<h1>베스트셀러</h1>
	</div>

	<section class="slider mt-4">
		<div class="container-fluid" id="container-fluid">
			<div class="row no-gutters" id="no-gutters">
				<div class="col-lg-10 col-sm-10 col-md-10 slider-wrap">
				
				<c:forEach var="i" begin="1" end="10">
					<!-- slider-item 시작 jstl이든 jquery든 반복을 이용해서 동적으로 만들어지게 바꾸기 -->
					<div class="slider-item">
						<div class="slider-item-content">
							<div class="post-thumb mb-4">
								<a onclick="move()">
									<img src="https://via.placeholder.com/500x530.png?text=temp1" alt="" class="img-fluid">
								</a>
							</div>

							<div class="slider-post-content">
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">일본 소설${i }</span>
								<h4 class="post-title mt-1"><a onclick="move()">스즈메의 문단속</a></h4>
								<span class=" text-muted  text-capitalize">신카이 마코토 저 | 민경욱 역</span>
							</div>
						</div>
					</div>
				</c:forEach>

<!-- 					<div class="slider-item">
						<div class="slider-item-content">
							<div class="post-thumb mb-4">
								<a href="blog-single.html">
									<img src="https://via.placeholder.com/500x530.png?text=temp2" alt="" class="img-fluid">
								</a>
							</div>
							<div class="slider-post-content">
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">경영/경제</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">장하준의 경제학 레시피 : 마늘에서 초콜릿까지 18가지 재료로 요리한 경제 이야기</a></h3>
								<span class=" text-muted  text-capitalize">장하준 저 | 김희정 역</span>
							</div>
						</div>
					</div>

					<div class="slider-item">
						<div class="slider-item-content">
							<div class="post-thumb mb-4">
								<a href="blog-single.html">
									<img src="https://via.placeholder.com/500x530.png?text=temp3" alt="" class="img-fluid">
								</a>
							</div>
							<div class="slider-post-content">
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">weekends</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">Our Favorite Weekend Getaways</a></h3>
								<span class=" text-muted  text-capitalize">June 12, 2019</span>
							</div>
						</div>
					</div>

					<div class="slider-item">
						<div class="slider-item-content">
							<div class="post-thumb mb-4">
								<a href="blog-single.html">
									<img src="https://via.placeholder.com/500x530.png?text=temp4" alt="" class="img-fluid">
								</a>
							</div>

							<div class="slider-post-content">
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">Travel</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">Trip to California</a></h3>
								<span class=" text-muted  text-capitalize">September 15, 2019</span>
							</div>
						</div>
					</div>

					<div class="slider-item">
						<div class="slider-item-content">
							<div class="post-thumb mb-4">
								<a href="blog-single.html">
									<img src="https://via.placeholder.com/500x530.png?text=temp5" alt="" class="img-fluid">
								</a>
							</div>

							<div class="slider-post-content">
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">Travel</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">Trip to California</a></h3>
								<span class=" text-muted  text-capitalize">September 15, 2019</span>
							</div>
						</div>
					</div>

					</div>
					
					<div class="slider-item">
						<div class="slider-item-content">
							<div class="post-thumb mb-4">
								<a href="blog-single.html">
									<img src="https://via.placeholder.com/500x530.png?text=temp6" alt="" class="img-fluid">
								</a>
							</div>

							<div class="slider-post-content">
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">Travel</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">Trip to California</a></h3>
								<span class=" text-muted  text-capitalize">September 15, 2019</span>
							</div>
						</div>
					</div> -->
					<!-- slider-item 끝 -->
					
				</div>
			</div>
		</div>
	</section>

	<div class="steady">
		<h1>스테디셀러</h1>
	</div>

	<section class="section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="row" id="row">
					<c:forEach var="k" begin="1" end="4">
						<c:forEach var="i" begin="1" end="4">
						<div class="col-lg-3 col-md-6">
							<article class="post-grid mb-5">
								<a class="post-thumb mb-4 d-block" href="blog-single.html">
									<img src="https://via.placeholder.com/255x255.png?text=temp" alt="" class="img-fluid w-100">
								</a>
								<span class="cat-name text-color font-extra text-sm text-uppercase letter-spacing-1">Explore ${k}-${i}</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">The best place to explore to enjoy</a></h3>

								<span class="text-muted letter-spacing text-uppercase font-sm">June 15, 2019</span>

							</article>
						</div>
						</c:forEach>
					</c:forEach>
						<!-- <div class="col-lg-3 col-md-6">
							<article class="post-grid mb-5">
								<a class="post-thumb mb-4 d-block" href="blog-single.html">
									<img src="https://via.placeholder.com/255x255.png?text=temp" alt="" class="img-fluid w-100">
								</a>
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">Lifestyle</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">How to Make list for travelling alone</a></h3>

								<span class="text-muted letter-spacing text-uppercase font-sm">September 15, 2019</span>

							</article>
						</div>
						<div class="col-lg-3 col-md-6">
							<article class="post-grid mb-5">
								<a class="post-thumb mb-4 d-block" href="blog-single.html">
									<img src="https://via.placeholder.com/255x255.png?text=temp" alt="" class="img-fluid w-100">
								</a>
								<span class=" cat-name text-color font-sm font-extra text-uppercase letter-spacing">Food</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">5 ingredient cilantro vinaigrette</a></h3>

								<span class="text-muted letter-spacing text-uppercase font-sm">September 15, 2019</span>

							</article>
						</div>
						<div class="col-lg-3 col-md-6">
							<article class="post-grid mb-5">
								<a class="post-thumb mb-4 d-block" href="blog-single.html">
									<img src="https://via.placeholder.com/255x255.png?text=temp" alt="" class="img-fluid w-100">
								</a>
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">Explore</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">A Simple Way to Feel Like Home When You
										Travel</a></h3>

								<span class="text-muted letter-spacing text-uppercase font-sm">March 20, 2019</span>

							</article>
						</div> -->

						<!-- <div class="col-lg-3 col-md-6">
							<article class="post-grid mb-5">
								<a class="post-thumb mb-4 d-block" href="blog-single.html">
									<img src="https://via.placeholder.com/255x255.png?text=temp" alt="" class="img-fluid w-100">
								</a>
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">Travel</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">What Type of Traveller Are You?</a></h3>

								<span class="text-muted letter-spacing text-uppercase font-sm">September 15, 2019</span>

							</article>
						</div>
						<div class="col-lg-3 col-md-6">
							<article class="post-grid mb-5">
								<a class="post-thumb mb-4 d-block" href="blog-single.html">
									<img src="https://via.placeholder.com/255x255.png?text=temp" alt="" class="img-fluid w-100">
								</a>
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">Experience</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">A Road Trip Review of the 2018</a></h3>

								<span class="text-muted letter-spacing text-uppercase font-sm">July 10, 2019</span>

							</article>
						</div>
						<div class="col-lg-3 col-md-6">
							<article class="post-grid mb-5">
								<a class="post-thumb mb-4 d-block" href="blog-single.html">
									<img src="https://via.placeholder.com/255x255.png?text=temp" alt="" class="img-fluid w-100">
								</a>
								<span class=" cat-name text-color font-sm font-extra text-uppercase letter-spacing">music</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">Portugal’s Sunset summer vission</a></h3>

								<span class="text-muted letter-spacing text-uppercase font-sm">September 15, 2019</span>

							</article>
						</div>
						<div class="col-lg-3 col-md-6">
							<article class="post-grid mb-5">
								<a class="post-thumb mb-4 d-block" href="blog-single.html">
									<img src="https://via.placeholder.com/255x255.png?text=temp" alt="" class="img-fluid w-100">
								</a>
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">beauty</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">The best soft Tropical Getaway</a></h3>

								<span class="text-muted letter-spacing text-uppercase font-sm">March 12, 2019</span>

							</article>
						</div>
						<div class="col-lg-3 col-md-6">
							<article class="post-grid mb-5">
								<a class="post-thumb mb-4 d-block" href="blog-single.html">
									<img src="https://via.placeholder.com/255x255.png?text=temp" alt="" class="img-fluid w-100">
								</a>
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">Travel</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">Memoriable Paris Girls Trip </a></h3>

								<span class="text-muted letter-spacing text-uppercase font-sm">April 19, 2019</span>

							</article>
						</div>
						<div class="col-lg-3 col-md-6">
							<article class="post-grid mb-5">
								<a class="post-thumb mb-4 d-block" href="blog-single.html">
									<img src="https://via.placeholder.com/255x255.png?text=temp" alt="" class="img-fluid w-100">
								</a>
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">Experience</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">How to Plan your Trip the Right Way</a></h3>

								<span class="text-muted letter-spacing text-uppercase font-sm">February 15, 2019</span>

							</article>
						</div>

						<div class="col-lg-3 col-md-6">
							<article class="post-grid mb-5">
								<a class="post-thumb mb-4 d-block" href="blog-single.html">
									<img src="https://via.placeholder.com/255x255.png?text=temp" alt="" class="img-fluid w-100">
								</a>
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">Travel</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">8 Powerful Ways to Add Vibrant Colour to Your
										Life</a></h3>

								<span class="text-muted letter-spacing text-uppercase font-sm">August 15, 2019</span>

							</article>
						</div>
						<div class="col-lg-3 col-md-6">
							<article class="post-grid mb-5">
								<a class="post-thumb mb-4 d-block" href="blog-single.html">
									<img src="https://via.placeholder.com/255x255.png?text=temp" alt="" class="img-fluid w-100">
								</a>
								<span class=" cat-name text-color font-sm font-extra text-uppercase letter-spacing">Lifestyle</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">The best to-do list to help boost your
										productivity</a></h3>

								<span class="text-muted letter-spacing text-uppercase font-sm">October 2, 2019</span>

							</article>
						</div> -->
					</div>
				</div>

				<div class="m-auto">
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
	</section>

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