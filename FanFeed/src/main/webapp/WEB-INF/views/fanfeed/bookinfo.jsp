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
					<a class="navbar-brand" onclick="mainmove()"><img src="${cpath }/resources/images/logo.png" alt="" class="img-fluid w-100" id="logo"></a>
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
                          <a class="nav-link dropdown-toggle" onclick="mainmove()" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Home
                          </a>
<!--                           <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="index.html">Home 1</a>
                            <a class="dropdown-item" href="index-2.html">Home 2</a>
                            <a class="dropdown-item" href="index-3.html">Home 3</a>
                            <a class="dropdown-item" href="index-4.html">Home 4</a>
                            <a class="dropdown-item" href="index-5.html">Home 5</a>
                            <a class="dropdown-item" href="index-6.html">Home 6</a>
                          </div> -->
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
                      <li class="nav-item">
                      	 <a class="nav-link dropdown-toggle" onclick="categorymove()" id="navbarDropdown3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           category
                          </a>
                      </li>
                      <li class="nav-item dropdown">
                          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown4" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Post Formats
                          </a>
                          <div class="dropdown-menu" aria-labelledby="navbarDropdown4">
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
                    <input id="search" placeholder=" Search...">
                    <button type="submit" id="submit"><i class="ti-search"></i></button>
                </div>
            </div>
          </div>
    </nav>

</header>
<!--search overlay start-->
<!-- <div class="search-wrap">
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
</div> -->
<!--search overlay end-->

<section class="single-block-wrapper section-padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="sidebar sidebar-right">
					<div class="sidebar-wrap mt-5 mt-lg-0">




	<div class="sidebar-widget mb-5 ">
		<c:if test="${book.seq <10 }">
		<h4 class="text-center widget-title">Best seller</h4>
		</c:if>
		<c:if test="${book.seq >9 }">
		<h4 class="text-center widget-title">Best seller</h4>
		</c:if>
		<div class="sidebar-post-item-big">
			<a href="blog-single.html"><img src=${book.img } alt="" class="img-fluid"></a>
			<div class="mt-3 media-body" id="media-body">
<!--             	<span class="text-muted letter-spacing text-uppercase font-sm">2020.03.25. 전자책 출간</span>
				<div><h4 ><a href="#">개정 번역판 | 해리 포터와 마법사의 돌</a></h4></div> -->
                <button onclick="move()" class="btn btn-primary" id="detailbtn">분석하기</button>
			</div>
		</div>
        <br>
        <br>
        <br>

<%--         <div class="sidebar-widget category mb-5" id="top10">
            <h4 class="text-center widget-title">감성어 TOP 10</h4>
             <ul class="list-unstyled">
             <c:forEach var="i" begin="1" end="10">
              <li class="align-items-center d-flex justify-content-between" id="toplist">
                <span>${i }</span>
                <a href="#" >Innovation</a>
              </li>
              </c:forEach>
            </ul>
        </div> --%>
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
    <div class="post-header mb-5">
        <!-- <div class="meta-cat">
            <a class="post-category font-extra text-color text-uppercase font-sm letter-spacing-1" href="#">Health ,</a>
            <a class="post-category font-extra text-color text-uppercase font-sm letter-spacing-1"  href="#">lifestyle</a>
        </div>comment -->
        <br>
        <br>

        <div class="post-meta" id="post-meta">
	        <h5 class="post-title mt-2">
	            ${book.category }
	        </h5>
            <h2>${book.title }</h2>
            <h5>${book.author }</h5>
            <h5>${book.publisher }</h5>
            <br>
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
		<br>
		<br>
			
        <div class="chart-area">
            <div id="container" style="width:100%; height:100%;"></div>
        </div>
    </div>
	<hr>
	<div class="comment-area my-5">
		<br>
		<br>
		<br>
		<h2 class="mb-4 text-center">리뷰</h2>
		
		<c:forEach var="i" begin="1" end="4">
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
		</c:forEach>
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
</nav>
 -->
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
  <!--       <div class="col-lg-3 col-md-3 col-sm-6">
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
<script src="${cpath }/resources/js/left-custom.js"></script>
<!-- anychart js -->
<script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
<script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>




</body>
</html>