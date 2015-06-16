package com.homepage.web.controllers;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.service.KaupService;
import com.homepage.web.service.KaupServiceImpl;


/**
 * @ Date  : 2015.06.15
 * @ Author  : hanskim
 * @ Story  :  키와 몸무게가 입력되면 메세지를 웹브라우져에 랜더링(뿌리는) 역할
 */
@WebServlet("/model2/kaup.do")
public class KaupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		GetKaup(request, response);
		
	}

	private void GetKaup(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException,
			ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		KaupService kaup = new KaupServiceImpl();

		String heightParam = request.getParameter("height");
		String weightParam = request.getParameter("weight");
		
		double height = Double.parseDouble(heightParam);
		double weight = Double.parseDouble(weightParam);

		int idx = kaup.showIdx(weight, height);
		String msg = kaup.showkaup();

		request.setAttribute("height", height);
		request.setAttribute("weight", weight);
		request.setAttribute("idx", idx);
		request.setAttribute("msg", msg);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/Kaup.jsp");
		dispatcher.forward(request, response);
	}

	
}
