package com.bird.struts2.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();

	public String execute() {
		session.invalidate();
		System.out.println("session expired....");
		addActionMessage("User sign out successfully.");
		return "success";
	}
}
