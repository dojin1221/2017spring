<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h1>detail page</h1>
			<div class="jumbotron">
			<p>${bean.name }님의 상세정보</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div>
		<span>sabun</span>
		<span>${bean.sabun }</span>
	</div>
	
	<div>
		<span>nalja</span>
		<span>${bean.nalja }</span>
	</div>
	
	<div>
		<span>pay</span>
		<span>${bean.pay }</span>
	</div>
	
	<div class="btn-group-justified" role="group">
		<a href="./edit?idx=${bean.sabun }">수정</a>
		<a href="./delete?idx=${bean.sabun }">삭제</a>
	</div>
		</div>
	</div>
</div>
</body>
</html>