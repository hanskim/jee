<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>


<%-- <% request.setCharacterEncoding("UTF-8"); %> --%>

<!-- 1. request.getparmeter()는 낱개 파라미터의 키와 밸류값을 리턴
2. request.getparmeterValues() 밸류값만
3. request.getparmeterNames() name (value) 값만
4. request.getParameterMap() 은 map형태로  -->


<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>톰값을 받은 메세지</title>
</head>
<body>
<div>
<b> request.getparmeter()메소드 사용</b><br />
name 파라미터 = <%= request.getParameter("name")  %> <br />
address  파라미터 =  <%= request.getParameter("address")  %>

<p>



<b> request.getparmeterValues()메소드 사용</b><br />

<%
String[] values = request.getParameterValues("pet"); 

if(values != null){
	for(int i = 0 ;i<values.length ; i++){ %>
	넘오온 values : <%= values[i] %>   
	
	<%
	}	
	}
%>

<p>
<b> request.getparmeterNames()메소드 사용</b><br />

<%
Enumeration paraEnum= request.getParameterNames() ; 
while(paraEnum.hasMoreElements()){
	String name = (String) paraEnum.nextElement() ;
%>
<%= name %>
<%
}%>

<p>
<b> request.getparmeterMap()메소드 사용</b><br />


<%
Map parameterMap = request.getParameterMap();
String[] nameParam = (String[])parameterMap.get("name");
String[] addressParam = (String[])parameterMap.get("address");
 
 if(nameParam !=null){ %>
	 이름 =   <%= nameParam[0] %> <br />
	 주소 =  <%= addressParam[0] %> <br />
	 <% } %>




</div>
</body>
</html>