<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="resources/css/jquery.mobile-1.4.5.css"/>
    <script src="resources/js/jquery-1.12.4.js"></script>
    <script src="resources/js/jquery.mobile-1.4.5.js"></script>
	<script type="text/javascript">
		/* $(document).ready(function(){
			console.log("document 레디 시점");
		}); */
		
		$(document).on("mobileinit",function(){
			console.log("mobile 레디 시점");
			$.mobile.defaultPageTransition="slide";
			$.mobile.loadingMessage="로딩중...";
			
			$(document).on("pagebeforeload",function(event,data){
				console.log("페이지 로드전",data.url);
			});
			$(document).on("pageload",function(event,data){
				console.log("페이지 로드",data.url);
			});
			$(document).on("pageloadfailed",function(event,data){
				console.log("페이지 로드실패",data.url);
			});
			$(document).on("pagecreate",function(){
				console.log("페이지 만듬");
			});
			$(document).on("pageinit",function(){
				console.log("페이지 init");
			});
			$(document).on("pagebeforecreate",function(){
				console.log("페이지 만들기전");
			});
			$(document).on("pageremove",function(){
				console.log("페이지 지우기");
			});
			$(document).on("pageshow",function(event,ui){
				console.log("화면에 뿌려줌.");
			});
			$(document).on("pagebeforeshow",function(event,ui){
				console.log("화면에 뿌려주기 전..");
			});
			$(document).on("pagehide",function(event,ui){
				console.log("화면에서 숨김.");
				
			});
			$(document).on("pagebeforehide",function(event,ui){
				console.log("화면에 숨기기전."ui.nextPage);
			});
			
		});
		
	
	</script>
</head>
<body>
	<div data-role="page" id="index">
		<div data-role="header">
			<h1>JQUERY MOBILE</h1>
		</div>
		<div data-role="content">
			<ul data-role="listview">
				<li><a href="ex01">ex01</a></li>
				<li><a href="ex02">ex02</a></li>
				<li><a href="ex03">ex03</a></li>
				<li><a href="ex04">ex04</a></li>
				<li><a href="ex06">ex06</a></li>
				<li><a href="ex07">ex07</a></li>
			</ul>
		</div>
		<div data-role="footer">
		
		</div>
	</div>
</body>
</html>