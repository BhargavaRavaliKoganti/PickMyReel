package com.bird.struts2.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.bird.daoimpl.TweetsDAO;
import com.bird.pojo.Tweets;
import com.bird.pojo.Userdetails;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteTweets extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int tweetid;

	public int getTweetid() {
		return tweetid;
	}

	public void setTweetid(int tweetid) {
		this.tweetid = tweetid;
	}

	public String execute() {
		try {

			boolean flag = new TweetsDAO().delete(tweetid);
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
