<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>로그인 FORM</title>
</head>
<body>

    <form action="logIn.jsp" method="post">   
	<div>
	<table style="border 1px solid black ; border-collapse : collapse;">

	<tr>
		<td>ID: </td>
		<td><input type="text" name="memberId" id="memberId" placeholder="아이디"/>
		</td>
	</tr>
	
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pass" id="pass" placeholder="패스워드" /></td>
	</tr>
	
	<tr>
		<td colspan="2">
		<input type="submit" value ="전송" />
		</td>

		</table>
	
	</div>
	</form>
	
</body>
</html>