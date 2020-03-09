<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>두 수 더하기(배포서술자 - web.xml 파일에 등록)</h2>
	<form method="get" action="adder1"> <!-- 경로대신 adder1이라는 별칭을 사용 -->
		<p>첫번째 수 : <input type="text" name ="num1">
		<p>두번째 수 : <input type="text" name ="num2">
		<input type = "submit" value = "더하기">
	
	</form>
	
	<hr/>
	
	<h2>두 수 더하기(에노테이션(1:1) 등록)</h2>
	<form method="get" action="adder2"> <!-- 경로대신 adder1이라는 별칭을 사용 -->
		<p>첫번째 수 : <input type="text" name ="num1">
		<p>두번째 수 : <input type="text" name ="num2">
		<input type = "submit" value = "더하기">
	
	</form>
	
	<!-- 서블릿 매핑 방법 2가지 
		1. 배포서술자(web.xml) 등록
			- 매핑할 서블릿이 많은 경우에 일괄 처리가 용이
			- web.xml 파일에 등록
		
		2. 어노테이션
			- Servlet 클래스의 url-mapping에 등록
			- 1:1 방식으로 등록
			- 설정 파일이 필요 없음
			
		* Servlet 매핑 목적
			- 처리 프로그램을 url에서 숨긴다
				파일명과 폴더명(패키지)까지 숨긴다
			- 보안을 목적으로 숨긴다.	
	-->
	
</body>
</html>