package com.homepage.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.homepage.web.service.HelloService;
import com.homepage.web.service.HelloServiceImpl;

@WebServlet({"/name/hello.do","/hi.do"})      
public class HelloController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String path = request.getServletPath();
		System.out.println(""+path);
		
	/*	if (path.equalsIgnoreCase("/name/hello.do")) {	
			goHello(request, response);	
			
		}else if (path.equalsIgnoreCase("/hi.do")){			
			goHi(request, response);
		}
		*/
		
		switch (path) {
		case "/name/hello.do": goHello(request, response);	break;
		case "/hi.do" : goHi(request, response) ;	break;
		default:
			System.out.println("페이지 없음");
			break;
		}
		  
	}

	private void goHi(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HelloService hs = new HelloServiceImpl( );
		String msg =hs.greet();
		String name =request.getParameter("name");
		request.setAttribute("name", msg+name); 
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/hi.jsp");   
		dispatcher.forward(request,response);
	}

	
	private void goHello(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		HelloService hs = new HelloServiceImpl( );
		String msg =hs.greet();
		String name =request.getParameter("name");
		request.setAttribute("name", msg+name);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/hello.jsp");   
		dispatcher.forward(request,response);
	}
	
	
	
	
}
