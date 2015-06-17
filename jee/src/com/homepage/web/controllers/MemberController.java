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
@WebServlet({"/model2/join.do", "/model2/login.do","/member/searchIDForm.do","/member/searchPassForm.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Map<String,Object> map = new HashMap<String,Object>();
    MemberBean bean = new MemberBean( );
    MemberService service = new MemberServiceImpl( );

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String path = request.getServletPath();
		
		switch (path) {
		
		case "/member/searchIDForm.do" :
			RequestDispatcher dispatcher3 =request.getRequestDispatcher("views/model2/loginFail.jsp");
			dispatcher3.forward(request, response);
			break;
	
	    case "/member/searchPassForm.do" : 
	    	RequestDispatcher dispatcher4 =request.getRequestDispatcher("views/model2/searchPassForm.jsp");
	    	dispatcher4.forward(request, response);
	    	break;

		default:
			break;
		}
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

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
			
			System.out.println("컨트롤러 조건문 전까지 옴"+msg);
			
			if (msg.equalsIgnoreCase("일치하는 아이디 없음.")) {
				request.setAttribute("msg",msg);
				RequestDispatcher dispatcher2 = request.getRequestDispatcher("/views/model2/Loginfail.jsp");   
				dispatcher2.forward(request,response);
				break;
			}else if(msg.equalsIgnoreCase("비번 오류")){
				request.setAttribute("msg",msg);
				RequestDispatcher dispatcher2 = request.getRequestDispatcher("/views/model2/Loginfail.jsp");   
				dispatcher2.forward(request,response);
				break;
		
			}else{
				System.out.println("이게 보이면 로그인 성공된거임: "+ bean.getId());
				request.setAttribute("id", bean.getId());
				request.setAttribute("password", bean.getPassword());
				request.setAttribute("name", bean.getName());
				request.setAttribute("age", bean.getAge());
				request.setAttribute("address", bean.getAddr());
				RequestDispatcher dispatcher2 = request.getRequestDispatcher("/views/model2/Member.jsp");   
				dispatcher2.forward(request,response);
			}
	}

}
}
