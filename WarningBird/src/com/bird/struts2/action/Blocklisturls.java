package com.bird.struts2.action;

import com.bird.daoimpl.TweetsDAO;
import com.bird.daoimpl.UserdetailsDAO;
import com.opensymphony.xwork2.ActionSupport;

public class Blocklisturls extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int userid;

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String execute() {
		try {

			boolean flag = new UserdetailsDAO().updateStatus(userid);
			if (flag) {
				addActionMessage("Tweet Posted");
			} else {
				addActionError("Tweet not Posted It accepts only 140 chars....");

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "success";
	}

}
