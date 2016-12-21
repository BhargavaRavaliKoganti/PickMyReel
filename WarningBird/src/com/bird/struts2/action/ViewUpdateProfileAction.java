package com.bird.struts2.action;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.bird.daoimpl.UserdetailsDAO;
import com.bird.pojo.Userdetails;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewUpdateProfileAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Userdetails userdetails;
	private Userdetails userdetails1;

	public Userdetails getUserdetails() {
		return userdetails;
	}

	public void setUserdetails(Userdetails userdetails) {
		this.userdetails = userdetails;
	}

	public Userdetails getUserdetails1() {
		return userdetails1;
	}

	public void setUserdetails1(Userdetails userdetails1) {
		this.userdetails1 = userdetails1;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	HttpServletRequest request = ServletActionContext.getRequest();

	public String execute() {
		try {
			Map session1 = (Map) ActionContext.getContext().get("session");
			Userdetails userdetails = (Userdetails) session1.get("userdetails");

			userdetails1 = new UserdetailsDAO().findById(userdetails
					.getUserid());

			String filepathbackgroundimage = request.getSession()
					.getServletContext().getRealPath("/").concat("images")
					+ "\\" + userdetails1.getUserid() + "0.jpg";

			/*
			 * String filepathbackgroundimage = "c:\\" +
			 * userdetails1.getUserid() + "0.jpg";
			 */byte b1[] = userdetails1.getBackgroundimage().getBytes(1,
					(int) userdetails1.getBackgroundimage().length());

			OutputStream fout = new FileOutputStream(filepathbackgroundimage);
			fout.write(b1);
			userdetails1.setBackgroundimagepath(filepathbackgroundimage);

			String filepathprofileimage = request.getSession()
					.getServletContext().getRealPath("/").concat("images")
					+ "\\" + userdetails1.getUserid() + "1.jpg";

			/*
			 * String filepathprofileimage = "c:\\" + userdetails1.getUserid() +
			 * "1.jpg";
			 */
			byte b2[] = userdetails1.getProfileimage().getBytes(1,
					(int) userdetails1.getProfileimage().length());

			OutputStream fout2 = new FileOutputStream(filepathprofileimage);
			fout2.write(b2);
			userdetails1.setProfileimagepath(filepathprofileimage);

			System.out.println(userdetails1.getProfileimagepath());
			System.out.println(userdetails1.getBackgroundimagepath());

		} catch (Exception e) {
			System.out.println(e);
		}
		if (userdetails1 != null) {

			return "success";
		} else {
			addActionError("Error to load user Profile");
			return "input";
		}

	}
}
