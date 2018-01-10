<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div data-role="page" id="ex05">
	<div data-role="header" data-add-back-btn="true">
		<h1>ex06</h1>
	</div>
	<div data-role="content">
		<a>go ex05</a>
		<script type="text/javascript">
		$('a').click(function(){
			$.mobile.ChangePage("ex05",{
				'transition':'slide',
				'reverse':true
			});
		});
		</script>
	</div>
	<div data-role="footer">
	
	</div>
</div>