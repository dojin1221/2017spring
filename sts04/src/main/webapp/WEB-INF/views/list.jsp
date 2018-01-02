<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.popup{
		background-color: windowframe;
		width: 500px;
		height: 400px;
		border:1px solid gray;
		position: absolute;
		top: 100px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		
	});
	
	
	$(function(){
		$('table a').click(function(){
			$.ajax({
				'url':$(this).attr('href'),
				'method':'GET',
				'success': function(data){
					
				}
				
			});
			return false;
		});
		$('#popup').hide();
		$('#add').click(function(){
			$('#popup').show();
		});
		$('#popup>form').submit(function(){
			var param=$(this).serialize();
			$.ajax({
				'method':'POST',
				'data':param,
				success:function(){
					window.location.reload();
				}
			});
		});
	});
</script>
<title>Insert title here</title>
</head>
<body>	
		<div class="popup" id="detail">
			<h1>상세 페이지</h1>
	
				<p>
					<span></span>
					<span class="bean"></span>
				</p>
				
				<p>
					<span></span>
					<span class="bean"></span>
				</p>
				
				<p>
					<span></span>
					<span class="bean"></span>
				</p>
				
				<p>
					<span></span>
					<span class="bean"></span>
				</p>
				
				<p>
					<button>수정</button>
					<button>삭제</button>
				</p>
		</div>
		<div class="popup" id="add">
			<form>
			<h1>입력 페이지</h1>
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
					<button type="submit">입력</button>
				</div>
			</form>
		</div>
<h1>리스트 페이지</h1>
	<table>
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<c:forEach items="${list }" var="bean">
		<tr>
			<td><a href="${bean.sabun }">${bean.sabun }</a></td>
			<td><a href="${bean.sabun }">${bean.name }</a></td>
			<td><a href="${bean.sabun }">${bean.nalja }</a></td>
			<td><a href="${bean.sabun }">${bean.pay }</a></td>
		</tr>
		</c:forEach>
	</table>
		<button id="add">입력</button>
</body>
</html>