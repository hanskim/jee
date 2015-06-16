<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
    <!doctype html>
    <html lang="en">
    <head>
    	<meta charset="UTF-8" />
    	<title>회원정보관리 페이지</title>
    	<style>
    	@IMPORT url("../../css/model2/Kaup.css");
    	</style>
 	
    </head>
    <body>
  
    	  <fieldset>
    	  <legend>회원가입</legend>
    	<table>
    	
    		<tr>
    		<td>이름</td>
    		<td>
    	    <%--  <%= request.getParameter("name") %> --%>
    	    ${name}s
    		</td>
    		</tr>
    		
    		<tr>
    		<td>아이디</td>
    		<td>
    		    	<%-- <%= request.getParameter("id") %> --%>
    		${id}
    		</td>
    		</tr>
   
    		<tr>
    		<td>나이</td>
    		<td>
    		<%-- <%= request.getParameter("age") %> --%>
    		S{age}
    		</td>
    		</tr>
    		
    		<tr>
    		<td>주소</td>
    		<td>
    		    	<%-- <%=  request.getParameter("address") %> --%>
    		    ${address}
    		</td>
    		</tr>
    		
    		
    	</table>
    </fieldset>
   </form>
    
    </body>
    </html>