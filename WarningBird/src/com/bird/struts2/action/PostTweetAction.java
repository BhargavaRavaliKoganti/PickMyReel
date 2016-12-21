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

public class PostTweetAction extends ActionSupport implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String tweeterdesc;
	private String userid;
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = ServletActionContext.getRequest().getSession(true);

	public String getTweeterdesc() {
		return tweeterdesc;
	}

	public void setTweeterdesc(String tweeterdesc) {
		this.tweeterdesc = tweeterdesc;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String execute() {
		try {
			Map session1 = (Map) ActionContext.getContext().get("session");
			Userdetails userdetails = (Userdetails) session1.get("userdetails");
			Tweets tweets = new Tweets(userdetails.getUserid(), tweeterdesc);
			boolean flag = new TweetsDAO().save(tweets);
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

	@Override
	public void setSession(Map<String, Object> arg0) {

	}
}
