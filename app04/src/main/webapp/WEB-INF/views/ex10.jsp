<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/jquery.mobile-1.4.5.css">
<script type="text/javascript" src="resources/js/jquery-1.12.4.min.js"></script>

<script type="text/javascript" src="resources/js/jquery.mobile-1.4.5.js"></script>
<script type="text/javascript">
	$(function() {
		$("#ex10").on("swiperight",function(){
			$.mobile.changePage("#ex12",{
				'transition':'slide'
				,'reverse':true
			});
		});
		$("#ex11").on("swiperight",function(){
			$.mobile.changePage("#ex10",{
				'transition':'slide'
				,'reverse':true
			});
		});
		$("#ex12").on("swiperight",function(){
			$.mobile.changePage("#ex11",{
				'transition':'slide'
				,'reverse':true
			});
		});
		$("#ex10").on("swipeleft",function(){
			$.mobile.changePage("#ex11",{
				'transition':'slide'
			});
		});
		$("#ex11").on("swipeleft",function(){
			$.mobile.changePage("#ex12",{
				'transition':'slide'
			});
		});
		$("#ex12").on("swipeleft",function(){
			$.mobile.changePage("#ex10",{
				'transition':'slide'
			});
		});
	});
</script>

</head>
<body>
	<div data-role="page" id="ex10">
		<div data-role="header">
			<h1>page10</h1>
		</div>
		<div data-role="content">
			
		</div>
		<div data-role="footer" data-position="fixed">
			<h2>page10</h2>
		</div>
	</div>
	<div data-role="page" id="ex11">
		<div data-role="header">
			<h1>page11</h1>
		</div>
		<div data-role="content">
			
		</div>
		<div data-role="footer" data-position="fixed">
			<h2>page11</h2>
		</div>
	</div>
	<div data-role="page" id="ex12">
		<div data-role="header">
			<h1>page12</h1>
		</div>
		<div data-role="content">
			
		</div>
		<div data-role="footer" data-position="fixed">
			<h2>page12</h2>
		</div>
	</div>
</body>
</html>