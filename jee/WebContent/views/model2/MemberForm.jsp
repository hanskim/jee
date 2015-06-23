<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
    <!doctype html>
    <html lang="en">
    <head>
    	<meta charset="UTF-8" />
    	<title>회원가입 및 로그인 폼</title>
    	<style>
    	@IMPORT url("../../css/model2/Kaup.css");
    	
    	</style>
    	<script type="text/javascript src="<%=request.getContextPath()%>/js/member.js %>>
    	</script>
    	

 	
    </head>
    <body>
  
    	<form action="<%= request.getContextPath()%>/model2/join.do" method="post" name="frmJoin">
    	  <fieldset>
    	  <legend>회원가입</legend>
    	<table>
    		<tr>
    		<td>이름</td>
    		<td>
    		<input type="text" id="name" name="name" placeholder="이름 입력하세요" />
    		</td>
    		</tr>
    		<tr>
    		<td>아이디</td>
    		<td>
    		<input type="text" id="id" name="id" placeholder="아이디를 입력하세요" />
    		</td>
    		
    		<tr>
    		<td>패스워드</td>
    		<td>
    		<input type="password" id="password" name="password" />
    		</td>
    		</tr>
    		
    		<tr>
    		<td>나이</td>
    		<td>
    		<input type="text" id="age" name="age" placeholder="나이를 입력하세요" />
    		</td>
    		</tr>
    			<tr>
    		<td>주소</td>
    		<td>
    		<input type="text" id="address" name="address" placeholder="[서울시로 통일]" />
    		</td>
    		</tr>
 
    		
    		<tr>
    		<td colspan="2">
    		<!-- <input type="submit" value="전송" /> -->
    		<img src="<%=request.getContextPath() %>/images/joinbutton.png" style="cursor: pointer;" alt="" onclick="return join()" />
    		</td>
    		</tr>
    	</table>
    </fieldset>
   </form>
    	
   <form action="<%= request.getContextPath()%>/model2/login.do" method="post" name="frmLogin" >
    	  <fieldset>
    	  <legend>로그인</legend>
    	<table>
    		<tr>
    		<td>아이디</td>
    		<td>
    		<input type="text" id="id" name="id" placeholder="아이디" />
    		</td>
    		</tr>
    		<tr>
    		<td>패스워드</td>
    		<td>
    		<input type="password" id="password" name="password" />
    		</td>
    		</tr>
    		
    		
    		<tr>
    		<td colspan="2">
    	<!-- 	<input type="submit" value="전송" /> -->
    		<img src="<%=request.getContextPath() %>/images/btnlogin.gif" style="cursor: pointer;" alt="" onclick="return login()" />
    		</td>
    		</tr>
    	</table>
    </fieldset>
 </form>
 <div>
 
 <span>
<a href="#" onclick=searchID('<%= request.getContextPath()%>/member/searchIDForm.do'>아이디찾기</a>
</span>

<span>
<a href="#" onclick=searchPass('<%= request.getContextPath()%>/member/searchPassForm.do'>비번찾기</a>
</span>	
	
 </div>
    
    </body>
    </html>