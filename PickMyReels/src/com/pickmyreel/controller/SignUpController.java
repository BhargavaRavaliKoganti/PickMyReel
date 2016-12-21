package com.pickmyreel.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pickmyreel.DAO.UserDAO;
import com.pickmyreel.model.UserBean;

/**
 * Servlet implementation class SignUpController
 */
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result;
		String name = request.getParameter("username");
		String pwd = request.getParameter("password");
		
		HttpSession hs = request.getSession();
		hs.setAttribute("name", name);
		
		if(name.equals("") || pwd.equals("")){
			response.sendRedirect("SignUp.jsp?msg=Please Fill the form");
		}
		else{
		try {
			UserDAO ud = new UserDAO();
			UserBean uBean = new UserBean(name,pwd);
			result = ud.createUser(uBean);

			if(result == 1){
				response.sendRedirect("BookingSlot.jsp?msg=Welcome "+name+"!!!");
			}
			else if(result != 1){
				response.sendRedirect("SignUp.jsp?msg="+name +" already exists! signup with different name");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		}
	}

}
