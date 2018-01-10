<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div data-role="page"	id="ex01">
	<div data-role="header">
		<h1>폼 기능</h1>
		<a href="#" data-rel="back">뒤로</a>
	</div>
	<div data-role="content">
		<form>
			<div data-role="fieldcontain">
			<label for="name">name</label>
			<input type="text" id="name"/>
			</div>
			
			<div data-role="fieldcontain">
			<label for="sabun">sabun</label>
			<input type="number" id="sabun"/>
			</div>
			
			<div data-role="fieldcontain">
			<label for="pw">pw</label>
			<input type="password" id="pw"/>
			</div>
			
			<div data-role="fieldcontain">
			<label for="age">age</label>
			<input type="range" min="1" max="80" value="50" id="age"/>
			</div>
			
			<div data-role="fieldcontain">
			<label for="email">email</label>
			<input type="email" id="email"/>
			</div>
			
			<div data-role="fieldcontain">
			<label for="homepage">homepage</label>
			<input type="url" id="homepage"/>
			</div>
			
			<div data-role="fieldcontain">
			<label for="tel">tel</label>
			<input type="tel" id="tel"/>
			</div>
			
			<div data-role="fieldcontain">
			<label for="hobby">hobby</label>
			<select id="hobby" data-native-menu="false">
				<option value="item1">야구</option>
				<option value="item2">축구</option>
				<option value="item3" selected="selected">농구</option>
				<option value="item4">배구</option>
			</select>
			</div>
			
			
			<div data-role="fieldcontain">
			<fieldset data-role="controlgroup" data-type="horizontal">
			<input type="checkbox" id="ch1"/>
			<label for="ch1">ch1</label>
			<input type="checkbox" id="ch2"/>
			<label for="ch2">ch2</label>
			<input type="checkbox" id="ch3"/>
			<label for="ch3">ch3</label>
			</fieldset>
			</div>
			
			<div data-role="fieldcontain">
			<fieldset data-role="controlgroup" data-type="horizontal">
			<input type="radio" name="ra" id="ra1"/>
			<label for="ra1">ra1</label>
			<input type="radio" name="ra" id="ra2"/>
			<label for="ra2">ra2</label>
			<input type="radio" name="ra" id="ra3"/>
			<label for="ra3">ra3</label>
			</fieldset>
			</div>
			
			<div data-role="fieldcontain">
			<label for="toggle">toggle</label>
			<select id="toggle" data-role="slider">
				<option value="off">off</option>
				<option value="on">on</option>
			</select>
			</div>
			
			<div data-role="controlgroup" data-type="horizontal" >
			<input type="submit" value="전송"/>
			<input type="reset" value="취소"/>
			</div>
		</form>
	</div>
	<div data-role="footer">
	
	</div>

</div>