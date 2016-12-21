package com.bird.struts2.action;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.bird.daoimpl.UserdetailsDAO;
import com.bird.pojo.Userdetails;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String loginusername, loginpassword;
	SessionMap<String, Object> sessionmap;
	String filepathbackgroundimage;
	Userdetails userdetails;
	HttpServletRequest request = ServletActionContext.getRequest();

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String getLoginusername() {
		return loginusername;
	}

	public void setLoginusername(String loginusername) {
		this.loginusername = loginusername;
	}

	public String getLoginpassword() {
		return loginpassword;
	}

	public void setLoginpassword(String loginpassword) {
		this.loginpassword = loginpassword;
	}

	public String getFilepathbackgroundimage() {
		return filepathbackgroundimage;
	}

	public void setFilepathbackgroundimage(String filepathbackgroundimage) {
		this.filepathbackgroundimage = filepathbackgroundimage;
	}

	public String execute() {
		Userdetails userdetails = new Userdetails(loginusername, loginpassword);
		List list = new UserdetailsDAO().loginCheck(userdetails);
		if (!list.isEmpty()) {
			Iterator iterator = list.iterator();
			if (iterator.hasNext()) {
				Userdetails userdetails2 = (Userdetails) iterator.next();
				userdetails = new Userdetails(userdetails2);
				Userdetails headimage = new UserdetailsDAO()
						.findById(userdetails.getUserid());

				try {
					filepathbackgroundimage = request.getSession()
							.getServletContext().getRealPath("/").concat(
									"images")
							+ "\\" + headimage.getUserid() + "0head.jpg";

					byte b1[] = headimage.getBackgroundimage().getBytes(1,
							(int) headimage.getBackgroundimage().length());

					OutputStream fout = new FileOutputStream(
							filepathbackgroundimage);
					fout.write(b1);
					System.out.println(filepathbackgroundimage);

				} catch (Exception e) {
					System.out.println(e);
				}

				sessionmap.put("userdetails", userdetails);
				sessionmap.put("backimage", filepathbackgroundimage);

			}
			return "success";
		} else {
			addActionError("Invalid username and password");
			return "input";
		}

	}

	public void setSession(Map<String, Object> map) {
		sessionmap = (SessionMap<String, Object>) map;

	}

}
