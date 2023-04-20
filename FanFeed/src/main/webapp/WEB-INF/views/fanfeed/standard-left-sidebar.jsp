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


<div class="header-logo py-5 d-none d-lg-block">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-6 text-center">
        <a class="navbar-brand" href="index.html"><img src="images/BookBox.png" alt="" class="img-fluid w-100" id="logo"></a>
      </div>
    </div>
  </div>
</div>

<header class="header-top bg-grey justify-content-center">
   <nav class="navbar navbar-expand-lg navigation">
      <div class="container">
          <a class="navbar-brand d-lg-none" href="index.html"><img src="images/logo.png" alt="" class="img-fluid"></a>

              <div class="collapse navbar-collapse" id="navbarContent">
                  <ul id="menu" class="menu navbar-nav ">
                      <li class="nav-item dropdown  pl-0">
                          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Blog Posts
                          </a>
                          <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                            <a class="dropdown-item" href="standard-fullwidth.html">Standard Fullwidth</a>
                            <a class="dropdown-item" href="standard-left-sidebar.html">Standard Left Sidebar</a>
                            <a class="dropdown-item" href="standard-right-sidebar.html">Standard Right Sidebar</a>
                          </div>
                      </li>

                      <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
                      <li class="nav-item"><a href="fashion.html" class="nav-link">Category</a></li>
                      <li class="nav-item dropdown">
                          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                      <li class="nav-item d-lg-none"><div class="search_toggle p-3 d-inline-block bg-white"><i class="ti-search"></i></div></li>
                  </ul>
              </div>

              <div class="text-right search d-none d-lg-block">
                <div class="search_toggle">
                    <input id="search">
                    <button type="submit" id="submit"><i class="ti-search"></i></button>
                </div>
            </div>
          </div>
    </nav>

</header>
<!--search overlay start-->
<div class="search-wrap">
    <div class="overlay">
        <form action="#" class="search-form">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-9">
                        <input type="text" class="form-control" placeholder="Search..."/>
                    </div>
                    <div class="col-md-2 col-3 text-right">
                        <div class="search_toggle toggle-wrap d-inline-block">
                            <i class="ti-close"></i>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!--search overlay end-->

<section class="single-block-wrapper section-padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="sidebar sidebar-right">
					<div class="sidebar-wrap mt-5 mt-lg-0">




	<div class="sidebar-widget mb-5 ">
		<h4 class="text-center widget-title">Best seller</h4>

		<div class="sidebar-post-item-big">
			<a href="blog-single.html"><img src="https://img.ridicdn.net/cover/3306000090/xxlarge?dpi=xxhdpi#1" alt="" class="img-fluid"></a>
			<div class="mt-3 media-body" id="media-body">
            	<span class="text-muted letter-spacing text-uppercase font-sm">2020.03.25. 전자책 출간</span>
				<div><h4 ><a href="#">개정 번역판 | 해리 포터와 마법사의 돌</a></h4></div>
                <h5> 줄거리</h5>
			</div>
		</div>
        <br>
        <br>
        <br>

        <div class="sidebar-widget category mb-5">
            <h4 class="text-center widget-title">감성어 TOP 10</h4>
             <ul class="list-unstyled">
              <li class="align-items-center d-flex justify-content-between">
                <span>1</span>
                <a href="#" >Innovation</a>
              </li>
              <li class="align-items-center d-flex justify-content-between">
                <span>2</span>
                <a href="#">Software</a>
              </li>
              <li class="align-items-center d-flex justify-content-between">
                <span>3</span>
                <a href="#">Social</a>
              </li>
              <li class="align-items-center d-flex justify-content-between">
                <span>4</span>
                <a href="#">Trends</a>
              </li>
            </ul>
        </div>
        <!-- <div class="media border-bottom py-3 sidebar-post-item">
            <a href="#"><img class="mr-4" src="images/news/thumb-1.jpg" alt=""></a>
            <div class="media-body">
                <h4><a href="blog-single.html">Thoughtful living in los Angeles</a></h4>
            	<span class="text-muted letter-spacing text-uppercase font-sm">September 10, 2019</span>
            </div>
        </div>

        <div class="media py-3 sidebar-post-item">
            <a href="#"><img class="mr-4" src="images/news/thumb-2.jpg" alt=""></a>
           <div class="media-body">
                <h4><a href="blog-single.html">Vivamus molestie gravida turpis.</a></h4>
           		<span class="text-muted letter-spacing text-uppercase font-sm">September 10, 2019</span>
            </div>
        </div> -->
	</div>
	

	
	
	
</div>
				</div>
			</div>
			
			<div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
				<div class="single-post">
    <div class="post-header mb-5 text-center">
        <!-- <div class="meta-cat">
            <a class="post-category font-extra text-color text-uppercase font-sm letter-spacing-1" href="#">Health ,</a>
            <a class="post-category font-extra text-color text-uppercase font-sm letter-spacing-1"  href="#">lifestyle</a>
        </div>comment -->
        <h2 class="post-title mt-2">
            개정 번역판 | 해리 포터와 마법사의 돌
        </h2>

        <div class="post-meta">
            
            <span class="text-uppercase font-sm letter-spacing-1">2020.03.25. 전자책 출간</span>
        </div>
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
                                <h4 class="text-center widget-title">감성 연관어</h4>
                                <input type="hidden" id="selectedSentiment" value="all">
                                <div id="factorDetail" class="chart-wrap chart-reputation-bubble">
                                    <svg width="100%" height="100%" viewBox="0 0 350 330" preserveAspectRatio="xMinYMin meet" class="bubble">
                                        <g class="node" transform="translate(126.22340445964113,166.79076499519638)">
                                            <circle r="71.2206729731952" style="cursor: pointer; fill: #3C486B; stroke: #3C486B; fill-opacity: 0.85; stroke-width: 2;"></circle>
                                            <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 59.1394px;">
                                                좋다</text>
                                        </g>
                                        <g class="node" transform="translate(247.69049525056934,166.79076499519638)">
                                            <circle r="48.7793983353067" style="cursor: pointer; fill: #F9D949; stroke: #F9D949; fill-opacity: 0.85; stroke-width: 2;"></circle>
                                            <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 39.2956px;">
                                                멋진</text>
                                        </g>
                                        <g class="node" transform="translate(206.38165803073275,251.13718943322522)">
                                            <circle r="43.6723734220134" style="cursor: pointer; fill: #F45050; stroke: #F45050; fill-opacity: 0.85; stroke-width: 2;"></circle>
                                            <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 22.3827px;">
                                                멋지다</text>
                                        </g>
                                        <g class="node" transform="translate(206.33017716347626,82.78004907453935)">
                                            <circle r="43.39372475887171" style="cursor: pointer; fill: #3C486B; stroke: #3C486B; fill-opacity: 0.85; stroke-width: 2;"></circle>
                                            <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 21.2031px;">
                                                잘하다</text>
                                        </g>
                                        <g class="node" transform="translate(125.85255310031408,53.234786022071916)">
                                            <circle r="40.868892079470065" style="cursor: pointer; fill: #F9D949; stroke: #F9D949; fill-opacity: 0.85; stroke-width: 2;"></circle>
                                                <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 14.7708px;">
                                                    감사하다</text>
                                            </g>
                                            <g class="node" transform="translate(130.50667317967418,273.2979857809192)">
                                                <circle r="33.90562098582621" style="cursor: pointer; fill: #F45050; stroke: #F45050; fill-opacity: 0.85; stroke-width: 2;"></circle>
                                                    <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 15.9419px;">
                                                        잘들다</text>
                                                </g>
                                                <g class="node" transform="translate(283.41493598228254,91.86766242433403)">
                                                    <circle r="32.75784089492373" style="cursor: pointer; fill: #98D8AA; stroke: #98D8AA; fill-opacity: 0.85; stroke-width: 2;"></circle>
                                                        <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 15.9419px;">
                                                            잘들다</text>
                                                    </g>
                                                    <g class="node" transform="translate(281.74880352377085,240.52264098998072)">
                                                        <circle r="30.971547560271137" style="cursor: pointer; fill: #3C486B; stroke: #3C486B; fill-opacity: 0.85; stroke-width: 2;"></circle>
                                                            <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 22.4027px;">
                                                                좋은</text>
                                                        </g>
                                                        <g class="node" transform="translate(70.79608070504756,251.20237459101804)">
                                                            <circle r="28.295019199165935" style="cursor: pointer; fill: #98D8AA; stroke: #98D8AA; fill-opacity: 0.85; stroke-width: 2;"></circle>
                                                                <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 9.49243px;">
                                                                    아름다운</text>
                                                            </g>
                                                            <g class="node" transform="translate(64.13886665666614,87.31541193412322)">
                                                                <circle r="28.16279875979731" style="cursor: pointer; fill: #F45050; fill-opacity: 0.85; stroke-width: 2;"></circle>
                                                                    <text dy=".3em" style="cursor: pointer; text-anchor: middle; fill: rgb(255, 255, 255); user-select: none; font-size: 9.62999px;">
                                                                        좋은노래</text>
                                                            </g>
                                            <g class="node" transform="translate(64.13886665666614,87.31541193412322)">
                                                <circle r="28.16279875979731" style="cursor: pointer; fill: #F45050; fill-opacity: 0.85; stroke-width: 2;"></circle>
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

					<!-- <div class="slider-item">
						<div class="slider-item-content">
							<div class="post-thumb mb-4">
								<a href="blog-single.html">
									<img src="images/slider/slider2.jpg" alt="" class="img-fluid">
								</a>
							</div>
							<div class="slider-post-content">
								<span class="cat-name text-color font-sm font-extra text-uppercase letter-spacing">경영/경제</span>
								<h3 class="post-title mt-1"><a href="blog-single.html">장하준의 경제학 레시피 : 마늘에서 초콜릿까지 18가지 재료로 요리한 경제 이야기</a></h3>
								<span class=" text-muted  text-capitalize">장하준 저 | 김희정 역</span>
							</div>
						</div>
					</div> -->


				</div>
			</div>
		</div>
	</section>

    <div class="comment-area my-5">
		<h3 class="mb-4 text-center">2 Comments</h3>
		<div class="comment-area-box media">
			<!-- <img alt="" src="images/blog-user-2.jpg" class="img-fluid float-left mr-3 mt-2"> -->

			<div class="media-body ml-4">
				<h4 class="mb-0">Micle harison </h4>
				<span class="date-comm font-sm text-capitalize text-color"><i class="ti-time mr-2"></i>June 7, 2019 </span>

				<div class="comment-content mt-3">
					<p>Lorem ipsum dolor sit amet, usu ut perfecto postulant deterruisset, libris causae volutpat at est, ius id modus laoreet urbanitas. Mel ei delenit dolores.</p>
				</div>
				<!-- <div class="comment-meta mt-4 mt-lg-0 mt-md-0">
					<a href="#" class="text-underline ">Reply</a>
				</div> -->
			</div>
		</div>

		<div class="comment-area-box media mt-5">
			<!-- <img alt="" src="images/blog-user-3.jpg" class="mt-2 img-fluid float-left mr-3"> -->

			<div class="media-body ml-4">
				<h4 class="mb-0 ">John Doe </h4>
				<span class="date-comm font-sm text-capitalize text-color"><i class="ti-time mr-2"></i>June 7, 2019 </span>

				<div class="comment-content mt-3">
					<p>Some consultants are employed indirectly by the client via a consultancy staffing company. </p>
				</div>
				<!-- <div class="comment-meta mt-4 mt-lg-0 mt-md-0">
					<a href="#" class="text-underline">Reply</a>
				</div> -->
			</div>
		</div>
	</div>



    </div>
</div>





    <div class="post-body">
        <div class="entry-content">
            <!-- <div class="sidebar-widget category mb-5 col-lg-4">
                <h4 class="text-center widget-title">감성어 TOP 10</h4>
                 <ul class="list-unstyled">
                  <li class="align-items-center d-flex justify-content-between">
                    <span>1</span>
                    <a href="#" >Innovation</a>
                  </li>
                  <li class="align-items-center d-flex justify-content-between">
                    <span>2</span>
                    <a href="#">Software</a>
                  </li>
                  <li class="align-items-center d-flex justify-content-between">
                    <span>3</span>
                    <a href="#">Social</a>
                  </li>
                  <li class="align-items-center d-flex justify-content-between">
                    <span>4</span>
                    <a href="#">Trends</a>
                  </li>
                </ul>
            </div> -->
          <!-- <h2 class="mt-4 mb-3">Perfect design & code delivered to you</h2>
          <p> The Sagoths had begun to take notice of his habit of declaiming throughout entire marches. One of them asked him what he was saying—to whom he was talking. The question gave me an idea, so I answered quickly before Perry could say anything.</p>
            <blockquote>
                <i class="ti-quote-left mr-2"></i>A wise girls knows her limit to touch the sky.Repellat sapiente neque iusto praesentium adipisci.The question gave me an idea, so I answered quickly before Perry could say anything.<i class="ti-quote-right ml-2"></i>
            </blockquote>

            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <img src="images/fashion/single-img1.png" alt="post-ads" class="img-fluid mr-4 w-100">
                </div>
                <div class="col-lg-6 col-md-6">
                    <img src="images/fashion/single-img2.png" alt="post-ads" class="img-fluid mr-4 w-100">
                </div>
            </div>
            <h3 class="mt-5 mb-3">Enjoying the view of summer</h3>

            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde cum delectus exercitationem 
                natus quidem enim error suscipit. Iure cupiditate nobis quaerat consectetur! Vero aliquam, 
                amet ipsum ullam reiciendis nostrum voluptate accusantium provident ut blanditiis incidunt. </p>

            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates ab ratione animi nobis in et consequatur 
                earum modi repellendus, qui, non debitis pariatur tempora consequuntur!</p>
        </div>
        
        <div class="post-tags py-4">
            <a href="#">#Health</a>
            <a href="#">#Game</a>
            <a href="#">#Tour</a>
        </div> -->
            
<!-- 
        <div class="tags-share-box center-box d-flex text-center justify-content-between border-top border-bottom py-3">

            <span class="single-comment-o"><i class="fa fa-comment-o"></i>0 comment</span>

            <div class="post-share">
                <span class="count-number-like">2</span>
                <a class="penci-post-like single-like-button"><i class="ti-heart"></i></a>                    
            </div>

            <div class="list-posts-share">
                <a target="_blank" rel="nofollow" href="#"><i class="ti-facebook"></i></a>
                <a target="_blank" rel="nofollow" href="#"><i class="ti-twitter"></i></a>
                <a target="_blank" rel="nofollow" href="#"><i class="ti-pinterest"></i></a>
                <a target="_blank" rel="nofollow" href="#"><i class="ti-linkedin"></i></a>
            </div>
        </div> -->
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
            <span class="text-uppercase font-sm letter-spacing">Next</span>
            <h4 class="mt-3"> Intel’s new smart glasses actually look good</h4>
        </a>
    </div>
    <div class="next-post">
        <a href="blog-single.html">
            <span class="text-uppercase font-sm letter-spacing">Previous</span>
            <h4 class="mt-3">Free Two-Hour Delivery From Whole Foods</h4>
        </a>
    </div>
</nav>

<div class="related-posts-block mt-5">
    <h3 class="news-title mb-4 text-center">
       연관 도서
    </h3>
    <br>
    <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-6">
            <div class="post-block-wrapper mb-4 mb-lg-0">
                <a href="blog-single.html">
                    <img class="img-fluid" src="images/fashion/img-1.jpg" alt="post-thumbnail"/>
                </a>
                <div class="post-content mt-3">
                    <h5 >
                        <a href="blog-single.html">Intel’s new smart glasses actually look good</a>
                    </h5>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6">
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
        </div>
    </div>
</div>

<br>
<br>

<div class="related-posts-block mt-5">
    <h3 class="news-title mb-4 text-center">
       대표 저서
    </h3>
    <br>
    <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-6">
            <div class="post-block-wrapper mb-4 mb-lg-0">
                <a href="blog-single.html">
                    <img class="img-fluid" src="images/fashion/img-1.jpg" alt="post-thumbnail"/>
                </a>
                <div class="post-content mt-3">
                    <h5 >
                        <a href="blog-single.html">Intel’s new smart glasses actually look good</a>
                    </h5>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6">
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
        </div>
    </div>
</div>

			</div>
		</div>
	</div>
</section>


<!--footer start-->
<footer class="footer-section bg-grey">
    <div class="instagram-photo-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!-- <h4 class="text-center">Follow in Instagram</h4> -->
            </div>
        </div>

        <div class="row no-gutters" id="instafeed">
				
          </div>
        </div>
    </div>
</div>

    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="mb-4">
                    <h2 class="footer-logo">Revolve.</h2>
                </div>
                <!-- <ul class="list-inline footer-socials">
                    <li class="list-inline-item"><a href="#"><i class="ti-facebook mr-2"></i>Facebook</a></li>
                    <li class="list-inline-item"><a href="#"><i class="ti-twitter mr-2"></i>Twitter</a></li>
                    <li class="list-inline-item"><a href="#"><i class="ti-linkedin mr-2"></i>Linkedin</a></li>
                    <li class="list-inline-item"><a href="#"><i class="ti-pinterest mr-2"></i>Pinterest</a></li>
                    <li class="list-inline-item"><a href="#"><i class="ti-github mr-2"></i>Github</a></li>
                    <li class="list-inline-item"><a href="#"><i class="ti-instagram mr-2"></i>Instrgram</a></li>
                    <li class="list-inline-item"><a href="#"><i class="ti-rss mr-2"></i>rss</a></li>
                </ul> -->
            </div>
       
            <div class="col-md-12 text-center">
               <p class="copyright">© Copyright 2019 - Revolve. All Rights Reserved. Distribution <a
                class="text-white" href="https://themewagon.com">ThemeWagon.</a></p>
            </div>
        </div>
    </div>
</footer>
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
<script src="${cpath }/resources/js/custom.js"></script>
<!-- left js -->
<script src="${cpath }/resources/js/left-custom.js"></script>
<!-- anychart js -->
<script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
<script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>

</body>
</html>