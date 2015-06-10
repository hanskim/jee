<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>

<%!   /* 선언부 */
public int multiply(int a, int b){
	int c = a*b ;
	return c;
}                 
%>

<% 
Date now = new Date();
SimpleDateFormat date01; 
date01 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss a");  

%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>chap02\now.jsp</title>
</head>
<body>
	현재시간 
	<%= date01.format(now) %> <br />
	표현식 예제 : 10*25 = <%= multiply(10, 25) %>  <!--  표현식 -->
	
	<!--  jsp 에서제공하는 것들
	 1. 디렉티브  : 설정 정보 지정 '< % @ '
	 2. 스크립트  
	   2-1. 스크립트릿 :  자바코드를 실행 '< % '
	   2-2. 표현식   : 값을 출력함. '< % ='   syso의 기능과 동일하지만 여기서 syso는 안 먹힘
       2-3. 선언부   : 자바 메서드를 만듬. 잘 안 씀. why? 
      3.표현언어(EL)
      4. 기본객채
      5. 표준태그라이브러리(JSTL) -->
      
</body>
</html>