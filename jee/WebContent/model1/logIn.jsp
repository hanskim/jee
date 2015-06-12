<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String id = request.getParameter("memberId");
    if(id.equals("admin")){
    	response.sendRedirect("now.jsp");
    }else{   %>
    
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>로그인페이지</title>
</head>
<body>잘못된 아이디 입니다.
</body>
</html>

<% 	
    }

    %>
