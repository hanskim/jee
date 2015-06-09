<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Right Content Frame</title>
<style>
@IMPORT url("rightContent.css");
</style>
</head>
<body>

	<header> 
	<h3> 머릿말</h3>
	<nav>          <!--  네비게이터 -->
	<ul>            <!--  ul>li*3 +tab -->
		<li>네비게이터메뉴 1</li>
		<li>네비게이터메뉴 2</li>
		<li>네비게이터메뉴 3</li>
	</ul>
	</nav>
	</header>
	<aside>
	<section class ="topMenu">
	<section>           <!--   내부는 aside여부 상관 없이 무조건 <section></section> -->
	<h3> 사이드바</h3>
	<ul class ="snb">
		<li>메뉴1</li>
		<li>메뉴2</li>
		<li>메뉴3</li>
	</ul>
	</section>
	</aside>

<article>
<section class ="rightContent">
<hgroup>
<h2> jee 모델 2 (MVC)모델</h2>
</hgroup>
<figure>
<img src="" alt="" />
<figcaption>상대경로 이미지 호출</figcaption>
</figure>
<p id="mvcDetail">   MVC모델은 3 파트로 구분하여 개발됨. <br /> 
 <!-- br은 줄바꿈 -->
 [1] <mark>Model</mark> : 순수자바파일(DB와 연결, 데이터전송 & 연산)<br /> 
 [2] <mark>View</mark>  : jsp , html + css + javascript + xml <br />
 [3] <mark>Controller</mark> : Servlet(View에서 넘어온 데이터를 주고 받는 자바 파일) <br />
</p>
</section>
</article>

	
<footer>
꼬릿말
</footer>

</body>
</html>