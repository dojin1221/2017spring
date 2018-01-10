<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div data-role="page" id="ex07">
	<div data-role="header" data-add-back-btn="true">
		<h1>event</h1>
	</div>
	<div  data-role="content">
		<script type="text/javascript">
			$('#ex07>div').eq(1).on("tap",function(){
				console.log("누름");
			});
			$('#ex07>div').eq(1).on("taphold",function(){
				console.log("계속누르고있음");
			});
			$('#ex07>div').eq(1).on("swipe",function(){
				console.log("재낌");
			});
			$('#ex07>div').eq(1).on("swiperight",function(){
				console.log("재낌");
			});
			$('#ex07>div').eq(1).on("swipeleft",function(){
				console.log("재낌");
			});
			
		</script>
	</div>
	<div data-role="footer">
	
	</div>
</div>

