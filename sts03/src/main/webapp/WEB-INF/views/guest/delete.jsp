<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/ex03/resources/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="/ex03/resources/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
  		<div class="container-fluid">
    		<div class="navbar-header">
      			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        		<span class="sr-only">Toggle navigation</span>
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
      		</button>
      			<a class="navbar-brand" href="#">비트교육센터</a>
    		</div>
    		
    		 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="/ex03/">홈 <span class="sr-only">(current)</span></a></li>
        <li class="dropdown active">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">게스트 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="/ex03/guest">리스트</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="/ex03/guest/add">글쓰기</a></li>
            <li role="separator" class="divider"></li>
          </ul>
        </li>
      </ul>
      </div>
      
  		</div>
	</nav>
	
	<!-- 내용시작 -->
	
<div class="container-fluid">
  	<div class="row content">
    	<div class="col-md-12">
			<div class="jumbotron">
  				<h1>delete page</h1>
  				<p>사크제</p>
				<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
			</div>
		</div>
  	</div>
  	
  	<div class="row content">
    	<div class="col-md-12">
			 <!-- 입력페이지 -->
			 <h2>${sabun } 데이터를 삭제하시겠습니까??????</h2>
			 	<form method="post" action="/ex03/guest/${sabun }">
			 	<input type="hidden" name="_method" value="delete">
			 	<input type="hidden" name="sabun" value="${sabun }">
				  
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-default">삭제</button>
				    </div>
				  </div>
				</form>
			 <!-- end -->
		</div>
  	</div>
  	
  	<div class="row footer"><!-- 푸터 -->
    	<div class="col-md-12">푸터의 내용</div>
  	</div>
</div>
	
	
	
</body>
</html>