<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>이 창은 에러발생 보여주는 창  </title>
</head>
<body>

	요청 처리 과정에서 에러 발생함 <br />
	빠른 시간 내엥 문제 해결하겠음 <br />
	
	에러타입  :  <%= exception.getClass().getName() %> <br />
	
	에러메세지 : <%= exception.getMessage() %>  <br />
	
	<img src="<%=request.getContextPath()%>/images/bomb.PNG " alt="" /> <br />
	
</body>
</html>
    