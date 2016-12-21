package com.bird.struts2.action;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bird.daoimpl.FollowerDAO;
import com.bird.pojo.Follower;
import com.bird.pojo.Userdetails;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FollowAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Userdetails userdetails;
	private int followid;
	private List<Follower> followlist;

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
			System.out.println(userdetails.getUserid());
			System.out.println(followid);
			Follower follow = new Follower(userdetails.getUserid(), followid);
			boolean flag = new FollowerDAO().save(follow);
			followlist = new FollowerDAO().findAll();
		} catch (Exception e) {
			System.out.println(e);
		}
		if (followlist != null) {

			Iterator iterator = followlist.iterator();
			while (iterator.hasNext()) {
				try {
					Follower myfollow = (Follower) iterator.next();
					Userdetails userdetailsByFollowmeid = myfollow
							.getUserdetailsByFollowmeid();

					String filepathprofileimage = request.getSession()
							.getServletContext().getRealPath("/").concat(
									"images")
							+ "\\"
							+ userdetailsByFollowmeid.getUserid()
							+ "1.jpg";

					/*
					 * String filepathprofileimage = "c:\\" +
					 * userdetails1.getUserid() + "1.jpg";
					 */
					byte b2[] = userdetailsByFollowmeid.getProfileimage()
							.getBytes(
									1,
									(int) userdetailsByFollowmeid
											.getProfileimage().length());

					OutputStream fout2 = new FileOutputStream(
							filepathprofileimage);
					fout2.write(b2);
					myfollow.userdetailsByFollowmeid
							.setProfileimagepath(filepathprofileimage);

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
