<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
String name = request.getParameter("name") ;
String value = request.getParameter("value") ;

if(value !=null &&value !=null){
	/* application.setAttribute(name, value) ;   */  
	
	// application 에 넣었다는 것은 name과 value를 static으로 처리하는 효과
	// static 을 제거하기 위해 remove로 처리할 수 있다.
	// request.setAttribute는 name 과 value를 지역변수처럼 쓰는 효과
	
	
	session.setAttribute(name, value) ; 
	request.setAttribute(name, value) ; 
}
 
 %>

    <!doctype html>
    <html lang="en">
    <head>
    	<meta charset="UTF-8" />
    	<title>JSP 디버깅 객체의 속성(Attribute)</title>
    </head>
    <body>
    
    <%
    
    if(value !=null &&value !=null){
    %>
    <!-- application 기본 객체의 속성 설정 :  -->
    세션 기본 객체의 속성 설정 : 
    <%= name %>  =  <%= value %>   <br />
    
    리퀘스트 기본 객체의 속성 설정 : 
    <%= name %>  =  <%= value %>
    
    <%
    }else{
    %>
    <!--  application 기본 객체의 속성 설정 안 함 : -->
      세션 기본 객체의 속성 설정 :
     <%
    }
     %>
 	
    </body>
    </html>