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
import com.pickmyreel.model.ReserveBean;

/**
 * Servlet implementation class ReserveController
 */
public class ReserveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
	
    public ReserveController() {
        super();
        // TODO Auto-generated constructor stub
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
		int result;
		
		HttpSession hsm = request.getSession();
		String movie = (String) hsm.getAttribute("movie");
		String theater = request.getParameter("theater");
		System.out.println(theater);
	}
}
		/*String theater = request.getParameter("theater");
		HttpSession hst = request.getSession();
		hst.setAttribute("theater",theater);
		System.out.println(theater);
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		System.out.println(theater+ time);
		HttpSession hs = request.getSession();
		String user = (String)hs.getAttribute("name");
		
			try {
				ReserveDAO rdao = new ReserveDAO();
				ReserveBean rb = new ReserveBean(user,movie, theater, time, date);
				result = rdao.reserveSeat(rb);
				if(result > 0){
				response.sendRedirect("Seats.jsp?setas=" + result + "&movieName="+ movie + "&theater=" + theater + "&time=" + time + "&date=" + date);
				}else{
					response.sendRedirect("BookingSlot.jsp?msg=Sorry the availability of seats is nill!!");
				}
				
				
				ReserveBean rb = new ReserveBean(user, movie, time, threatername, seats);
				
				result = rdao.reserveSeat(rb);
				if(result == 1){
					uniqueCode = randInt();
					response.sendRedirect("WelcomePage.jsp?msg=Sucessfully reserved!!&code="+uniqueCode);
				}
				else if(result != 1){
					response.sendRedirect("BookingSlot.jsp?msg="+ user +"Please Try Again!!");
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}*/


