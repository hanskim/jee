package com.homepage.web.controllers;

import com.homepage.web.service.ReservationService;
import com.homepage.web.service.ReservationServiceImpl;

public class ReservationMain {
	
	public static void main(String[] args) {
		
		ReservationService service = new ReservationServiceImpl( );
		service.process();
	}

}
