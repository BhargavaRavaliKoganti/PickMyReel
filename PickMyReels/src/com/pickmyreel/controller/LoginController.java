package com.pickmyreel.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.pickmyreel.DAO.UserDAO;
import com.pickmyreel.model.UserBean;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	   
    public LoginController() {
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
		boolean result;
		String name = request.getParameter("username");
		String pwd = request.getParameter("password");
		HttpSession hs = request.getSession();
		hs.setAttribute("name", name);
		UserDAO ud;
	    Logger log = Logger.getLogger(LoginController.class.getName());
		try {
			ud = new UserDAO();
			UserBean uBean = new UserBean(name,pwd);
			result = ud.validateUser(uBean);
			 if(result){
					response.sendRedirect("BookingSlot.jsp");
//					log.info("loginPage to Bookingslot");
				}
				else{
					response.sendRedirect("Login.jsp?username=" + name);
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
