<%@page import="javax.management.modelmbean.RequiredModelMBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!doctype html>
    <html lang="en">
    <head>
    	<meta charset="UTF-8" />
    	<title>카우프지수 구하기</title>
    	<style>
    	@IMPORT url("../../css/model2/Kaup.css");
    	</style>
    	
    	
    </head>
    <body>
    	<%-- <form action="<%= request.getContextPath()%>/model2/kaup.do"> --%>
    	<table>
    		<tr>
    		<td>키 </td>
    		<td>  <%=request.getParameter("height")  %></td>
    		</tr>
    		<tr>
    		<td>몸무게</td>
    		<td>
    		<td>  <%= request.getParameter("weight")  %></td>
    		</td>
    		</tr>
    		
    		<tr>
    		<td colspan="2">
    		<!-- 카우푸지수는 24이고 마름입니다. -->
    		카우프지수는 : <%= request.getAttribute("idx")  %> 이고  결과는:<%= request.getAttribute("msg")  %>
    		</td>
    		</tr>
    	</table>
    	
    	</form>
    </body>
    </html>
