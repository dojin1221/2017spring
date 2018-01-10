<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
			<h1>main page</h1>
			<div class="jumbotron">
			<p>글쓰기</p>
			<a href="add.do">글쓰기</a>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<table class="table">
				<tr>
					<th>s</th>
					<th>n</th>
					<th>n</th>
					<th>p</th>
				</tr>
				<c:forEach items="${list }" var="bean">
				<tr>
					<td><a href="./detail?idx=${bean.sabun }">${bean.sabun }</a></td>
					<td><a href="./detail?idx=${bean.sabun }">${bean.name }</a></td>
					<td><a href="./detail?idx=${bean.sabun }">${bean.nalja }</a></td>
					<td><a href="./detail?idx=${bean.sabun }">${bean.pay }</a></td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>
	
	
</body>
</html>