package com.homepage.web.service;

public interface ReservationService {
	 
    public String checkOut(int floor,int row ,String id);
    public String checkIn(int floor,int row,String id);
    public String[][] checkIn();
    public String[][] showStatus();
    public void process();
    
}

