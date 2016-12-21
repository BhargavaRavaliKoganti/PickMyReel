package com.bird.struts2.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bird.daoimpl.FollowerDAO;
import com.bird.pojo.Follower;
import com.bird.pojo.Userdetails;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UnFollowAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Userdetails userdetails;
	private int followid;
	private String status;
	private List<Follower> followlist;

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getFollowid() {
		return followid;
	}

	public void setFollowid(int followid) {
		this.followid = followid;
	}

	public Userdetails getUserdetails() {
		return userdetails;
	}

	public void setUserdetails(Userdetails userdetails) {
		this.userdetails = userdetails;
	}

	public List<Follower> getFollowlist() {
		return followlist;
	}

	public void setFollowlist(List<Follower> followlist) {
		this.followlist = followlist;
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
			Follower follow = new Follower();
			boolean flag = new FollowerDAO().attachDirty(followid);
			followlist = new FollowerDAO().findAll();
		} catch (Exception e) {
			System.out.println(e);
		}
		if (followlist != null) {

			return "success";
		} else {
			addActionError("Error to load user Profile");
			return "input";
		}
	}
}
