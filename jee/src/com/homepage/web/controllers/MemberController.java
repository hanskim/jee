package com.homepage.web.controllers;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.beans.MemberBean;
import com.homepage.web.service.MemberService;
import com.homepage.web.service.MemberServiceImpl;

/**
 * @ Date  : 2015.06.15
 * @ Author  : hanskim
 * @ Story  :  회원가입과 로그인 담당 콘트롤러
 */
@WebServlet({"/model2/join.do", "/model2/login.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Map<String,Object> map = new HashMap<String,Object>();
	    MemberBean bean = new MemberBean( );
	    MemberService service = new MemberServiceImpl( );
	    
	    String path = request.getServletPath();
	    
	    switch (path) {
		case "/model2/join.do" :
			String name = request.getParameter("name");
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			String agePara = request.getParameter("age");
			String address = request.getParameter("address");
		    int age = Integer.parseInt(agePara);
		    
		    bean.setName(name);
		    bean.setAddr(address);
		    bean.setId(id);
		    bean.setPassword(password);
		    bean.setAge(age);

			service.join(id, password, name, Integer.parseInt(agePara), address);
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("/views/model2/MemberForm.jsp");   
			dispatcher1.forward(request,response);
			break;

		case "/model2/login.do":
		/*	request.setAttribute("id", map.get("id"));
			request.setAttribute("password", map.get("password"));
	     	request.setAttribute("name", map.get("name"));
			request.setAttribute("age", map.get("age"));
			request.setAttribute("address", map.get("address"));*/
			
			String id2 =  request.getParameter("id");
			String pass2 = request.getParameter("password");
			String msg = service.login(id2, pass2);
			
			System.out.println("test1");
			
			if (msg.equalsIgnoreCase("환영합니다.")) {
				System.out.println("로그인 성공시 : "+bean.getId());
				request.setAttribute("id", bean.getId());
				request.setAttribute("password", bean.getPassword());
				request.setAttribute("name", bean.getName());
				request.setAttribute("age", bean.getAge());
				request.setAttribute("address", bean.getAddr());
				RequestDispatcher dispatcher2 = request.getRequestDispatcher("/views/model2/Member.jsp");   
				dispatcher2.forward(request,response);
			}else{
				request.setAttribute("msg",msg);
				RequestDispatcher dispatcher2 = request.getRequestDispatcher("/views/model2/Loginfail.jsp");   
				dispatcher2.forward(request,response);
				
			}
			
			break;
	
		}

		
	}



}
