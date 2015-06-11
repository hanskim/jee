<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>리스트태그</title>
	<style>
	@IMPORT url("<%=request.getContextPath()%>/css/listTag.css");
	</style>
</head>
<body>
	<ul class ="multi">
	    <li> &nbsp;&nbsp;</li>
		<li>첫번째 리스트스타일</li>
		<ul>
			<li>두번째 리스트스타일</li>
			<ul>
				<li>세번째 리스트스타일</li>
				<li>가장 안쪽 3-1번 </li>
				<li>가장 안쪽 3-2번</li>
				<li>가장 안쪽 3-3번</li>
			</ul>
			<li>두번째 리스스타일 2-1</li>
			<li>두번째 리스스타일 2-2</li>
			<li>두번째 리스스타일 2-3</li>
		</ul>
		<li>첫번째 리스트스타일 1-1</li>
		<li>첫번째 리스트스타일 1-2</li>
		<li>첫번째 리스트스타일 1-3</li>
	</ul>
</body>
</html>