<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="resources/css/jquery.mobile-1.4.5.css"/>
<link rel="stylesheet" href="resources/css/themes/costom.css" />
<link rel="shortcut icon" href="resources/img/1.jpg"/>
<script src="resources/js/jquery-1.12.4.js"></script>
<script src="resources/js/jquery.mobile-1.4.5.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div data-role="page" id="main">
		<div data-role="header" data-theme="c">
			<h1>main</h1>
		</div>
		<div data-role="content" data-theme="c">
			<a href="#p2" data-role="button">next</a>
		</div>
		<div data-role="footer" data-position="fixed" data-theme="c">
			<div data-role="navbar">
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Menu</a></li>
					<li><a href="#">Info</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div data-role="page" id="p2">
		<div data-role="header" data-add-back-btn="true" data-theme="c">
			<h1>page 2</h1>
		</div>
		<div data-role="content" data-theme="c">
			<ul data-role="listview">
				<li><a href="#">item1</a></li>
				<li><a href="#">item2</a></li>
				<li><a href="#">item3</a></li>
				<li><a href="#">item4</a></li>
			</ul>
		</div>
		<div data-role="footer" data-position="fixed" data-theme="c">
			<div data-role="navbar">
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Menu</a></li>
					<li><a href="#">Info</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>