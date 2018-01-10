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
			<h1>add page</h1>
			<div class="jumbotron">
			<p>내용작성</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<form action="./insert" method="post" class="form-horizontal">
		<div>
			<label for="sabun">sabun</label>
			<input type="text" name="sabun" id="sabun">
		</div>
		
		<div>
			<label for="name">name</label>
			<input type="text" name="name" id="name">
		</div>
		
		<div>
			<label for="pay">pay</label>
			<input type="text" name="pay" id="pay">
		</div>
		
		<div>
			<button type="submit" class="btn btn-primary">입력</button>
			<button type="reset" class="btn btn-warning">초기화</button>
		</div>
	</form>
		</div>
	</div>
</div>
</body>
</html>