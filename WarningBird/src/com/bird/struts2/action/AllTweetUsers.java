package com.bird.struts2.action;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bird.daoimpl.UserdetailsDAO;
import com.bird.pojo.Follower;
import com.bird.pojo.Userdetails;
import com.opensymphony.xwork2.ActionSupport;

public class AllTweetUsers extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Userdetails userdetails;
	private List<Userdetails> userdetailslist;

	public Userdetails getUserdetails() {
		return userdetails;
	}

	public void setUserdetails(Userdetails userdetails) {
		this.userdetails = userdetails;
	}

	public List<Userdetails> getUserdetailslist() {
		return userdetailslist;
	}

	public void setUserdetailslist(List<Userdetails> userdetailslist) {
		this.userdetailslist = userdetailslist;
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
			userdetailslist = new UserdetailsDAO().findAll();

		} catch (Exception e) {
			System.out.println(e);
		}
		if (userdetailslist != null) {
			Iterator iterator = userdetailslist.iterator();
			while (iterator.hasNext()) {
				try {
					Userdetails userdetails = (Userdetails) iterator.next();

					String filepathbackgroundimage = request.getSession()
							.getServletContext().getRealPath("/").concat(
									"images")
							+ "\\" + userdetails.getUserid() + "0.jpg";

					byte b1[] = userdetails.getBackgroundimage().getBytes(1,
							(int) userdetails.getBackgroundimage().length());

					OutputStream fout = new FileOutputStream(
							filepathbackgroundimage);
					fout.write(b1);
					userdetails.setBackgroundimagepath(filepathbackgroundimage);

					String filepathprofileimage = request.getSession()
							.getServletContext().getRealPath("/").concat(
									"images")
							+ "\\" + userdetails.getUserid() + "1.jpg";

					byte b2[] = userdetails.getProfileimage().getBytes(1,
							(int) userdetails.getProfileimage().length());

					OutputStream fout2 = new FileOutputStream(
							filepathprofileimage);
					fout2.write(b2);
					userdetails.setProfileimagepath(filepathprofileimage);

				} catch (Exception e) {
					System.out.println(e);
				}
				// TODO: handle exception
			}
			return "success";
		} else {
			addActionError("Error to load user Profile");
			return "input";
		}
	}
}
