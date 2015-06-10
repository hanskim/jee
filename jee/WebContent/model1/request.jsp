<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>request  객체 </title>
</head>
<body>
	

<!-- 
request 기본 객체가 제공하는 기능
1. 브라우져 정보
2. 서버정보
3. 파라미터읽기 : ★★★★
4. 헤더 읽기
5. 쿠키읽기
6. 속성 처리 기능 ★★★★★
 -->
	
컨텍스트 경로 :    <%= request.getContextPath() %> <br />
<!-- 결과  : /jee  -->
<!--  ★★★  동적으로  root폴더를 최상위(jee) 로 할당하기에 어느 서버든지 여기로 접속-->
요청정보인코딩 :   <%= request.getCharacterEncoding() %> <br />
요청uri정보   :  <%= request.getRequestURI() %>  <br /> 
<!-- 결과 : /jee/model1/request.jsp  -->
	
</body>
</html>