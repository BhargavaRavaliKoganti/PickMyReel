package com.bird.struts2.action;

import java.util.Date;
import java.util.List;

import com.bird.daoimpl.UserdetailsDAO;
import com.bird.pojo.Userdetails;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {

	/**
	 * 
	 */
	List list;
	private static final long serialVersionUID = 1L;
	private String username, email, password;
	boolean flag = false;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String execute() {
		Userdetails userdetails = new Userdetails(username, password, email,
				new Date());
		flag = new UserdetailsDAO().save(userdetails);
		if (flag) {
			addActionMessage("register Success");
		} else {
			addActionError("not registerd.");

		}
		return "success";
	}

}
