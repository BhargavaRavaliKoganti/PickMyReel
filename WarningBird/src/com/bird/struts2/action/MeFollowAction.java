package com.bird.struts2.action;

import java.util.List;
import java.util.Map;

import com.bird.daoimpl.FollowerDAO;
import com.bird.pojo.Follower;
import com.bird.pojo.Userdetails;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class MeFollowAction extends ActionSupport {
	private List<Follower> myfollower;
	private static final long serialVersionUID = 1L;

	public List<Follower> getMyfollower() {
		return myfollower;
	}

	public void setMyfollower(List<Follower> myfollower) {
		this.myfollower = myfollower;
	}

	public String execute() {
		Map session1 = (Map) ActionContext.getContext().get("session");
		Userdetails userdetails = (Userdetails) session1.get("userdetails");
		myfollower = new FollowerDAO().findMeAll(userdetails.getUserid());
		if (myfollower != null) {
			return "success";
		} else {
			addActionError("no tweets");

		}
		return "success";
	}
}
