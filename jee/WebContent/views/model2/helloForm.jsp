<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>헬로우</title>
</head>
<body>
	<div>
	<form action ="<%=request.getContextPath()%>/name/hello.do" >  <!-- method없으면 기본은 get 방식 -->
	<input type="text" id="name" name="name" />
	<input type="submit" value ="전송hello" />
	</form>
	
	<p>
	
	<form action ="<%=request.getContextPath()%>/hi.do" >  <!-- method없으면 기본은 get 방식 -->
	<input type="text" id="name" name="name" />
	<input type="submit" value ="전송hi" />
	</form>
	
	
	
	
	</div>
</body>
</html>