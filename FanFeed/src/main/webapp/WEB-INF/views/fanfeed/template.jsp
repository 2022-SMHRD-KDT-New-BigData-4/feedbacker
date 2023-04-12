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
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${cpath }/resources/css/style.css">
<link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

		<div class="card">
			<div class="card-header">
				<div class="jumbotron jumbotron-fluid">
					<div class="container">
						<h1>Spring Framework</h1>
						<p>살려줘...</p>
					</div>
				</div>
			</div>
			<div class="card-body">
			 <div class="row">
			 	<div class="col-lg-2">
			 		왼쪽
			 	</div>
			 	<div class="col-lg-7">
			 		콘텐츠
			 		<h4>${vo.title }</h4>
			 		<h4>${vo.content }</h4>
			 	</div>
			 	<div class="col-lg-3">
			 		오른쪽
			 	</div>
			 </div>
			</div>
			<div class="card-footer">지능형 빅데이터 분석서비스 개...팔...자</div>
		</div>
</body>
</html>