package com.homepage.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.service.ReservationService;
import com.homepage.web.service.ReservationServiceImpl;
/*
@Date : someday;
@Author : itbank;
@Stroy : 예약 요청을 JSP에서 받아서 처리하는 컨트롤러 


*/@WebServlet({"/reservation/inputCheck.do","/reservation/checkIn.do","/reservation/checkOut.do"
		,"/reservation/showStatus.do"})
public class ReservationController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    ReservationService service = new ReservationServiceImpl();
    String[][] seat = new String[3][5]; 

    public ReservationController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        int floor =0;
        int row =0;
        String id ="";
        String msg = "";
        String path = request.getServletPath();
    	floor = Integer.parseInt(request.getParameter("floor"));   // 1이 넘어가면 0으로 보내야함
    	row=Integer.parseInt(request.getParameter("row"));
    	id = request.getParameter("id");
				
        switch (path) {
        case "/reservation/checkIn.do":
        	msg=service.checkIn(floor,row,id);
        	seat[floor][row]=id;
        	seat = service.checkIn();
        	request.setAttribute("seat",seat);
        	request.setAttribute("msg",msg);       	
        	RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/ReservationForm.jsp");
           	dispatcher.forward(request, response);
            break; // 체크인
            
        case "/reservation/checkOut.do":
        	String msg2= service.checkOut(floor, row, id);
        	msg2=service.checkOut(floor,row,id);
        	request.setAttribute("seat",seat);
        	request.setAttribute("msg",msg2);
        
        	   RequestDispatcher dispatcher1 = request.getRequestDispatcher("/views/model2/ReservationForm.jsp");
           	dispatcher1.forward(request, response);
            break; // 체크아웃
            
        case "/reservation/showStatus.do":
        	System.out.println("2");
        	String[][]seat =service.showStatus();
        	
        	   RequestDispatcher dispatcher2 = request.getRequestDispatcher("/views/model2/Reservation.jsp");
           	dispatcher2.forward(request, response);
        	break;
        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}

