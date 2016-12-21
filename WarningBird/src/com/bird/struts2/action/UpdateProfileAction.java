package com.bird.struts2.action;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bird.daoimpl.UserdetailsDAO;
import com.bird.pojo.Userdetails;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateProfileAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int userid;
	private String fullname, email, location, websiteUrl, biodata, phno;
	private File profileimage, backgroundimage;
	HttpServletRequest request = ServletActionContext.getRequest();

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getWebsiteUrl() {
		return websiteUrl;
	}

	public void setWebsiteUrl(String websiteUrl) {
		this.websiteUrl = websiteUrl;
	}

	public String getBiodata() {
		return biodata;
	}

	public void setBiodata(String biodata) {
		this.biodata = biodata;
	}

	public String getPhno() {
		return phno;
	}

	public void setPhno(String phno) {
		this.phno = phno;
	}

	public File getProfileimage() {
		return profileimage;
	}

	public void setProfileimage(File profileimage) {
		this.profileimage = profileimage;
	}

	public File getBackgroundimage() {
		return backgroundimage;
	}

	public void setBackgroundimage(File backgroundimage) {
		this.backgroundimage = backgroundimage;
	}

	

	public String execute() {

		String filepath = request.getSession().getServletContext().getRealPath(
				"/").concat("images");
	

		Userdetails userdetails = new Userdetails(userid, fullname, email,
				profileimage, backgroundimage, location, websiteUrl, biodata,
				phno);
		boolean flag = new UserdetailsDAO().updateProfile(userdetails);
		if (flag) {
			addActionMessage("Profile updated.");
		} else {
			addActionError("not updated.");

		}
		return "success";

	}
}
