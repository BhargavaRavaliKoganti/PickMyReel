package com.pickmyreel.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pickmyreel.DAO.ReserveDAO;
import com.pickmyreel.model.TicketBean;


public class SeatController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SeatController() {
        super();
        // TODO Auto-generated constructor stub
    }
    public static int randInt() {

	     // NOTE: Usually this should be a field rather than a method
	     // variable so that it is not re-seeded every call.
	     Random rand = new Random();

	     // nextInt is normally exclusive of the top value,
	     // so add 1 to make it inclusive
	     int randomNum = rand.nextInt((99999 - 10000) + 1) + 10000;

	     return randomNum;
	 }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int uniquecode;
		int result;
		ReserveDAO rdao;
		uniquecode = randInt();
	
		HttpSession hs = request.getSession();
		String theater = (String) hs.getAttribute("theater");
		String time = (String) hs.getAttribute("time");
		String username = (String) hs.getAttribute("name");
		String movie = (String) hs.getAttribute("movie");
		String date = (String) hs.getAttribute("date");
		String seats = request.getParameter("selectedSeats");
	    String amount = request.getParameter("totals");
		if(seats == ""){
			response.sendRedirect("seatchart.jsp?msg=SeatsNotSelected");
		}
		else{
	    try {
			rdao = new ReserveDAO();
			TicketBean tb = new TicketBean(username, movie, theater,time, date, seats, uniquecode, amount);
			result =  rdao.reserveSeat(tb);
			if(result==1){
				response.sendRedirect("Ticket.jsp?msg=Sucessfully Booked!!&code='"+uniquecode+"'&seats="+seats+"&amount="+amount);
			}else{
				response.sendRedirect("BookingSlot.jsp?msg=failedupadating");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	

		}

	
}

