package com.bird.struts2.action;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bird.daoimpl.FollowerDAO;
import com.bird.daoimpl.TweetsDAO;
import com.bird.pojo.Follower;
import com.bird.pojo.Tweets;
import com.bird.pojo.Userdetails;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class WarningBirdAction extends ActionSupport {
	private List<Tweets> usertweets;
	private Set<String> urls;
	int tweetcount;
	private static final long serialVersionUID = 1L;

	public int getTweetcount() {
		return tweetcount;
	}

	public void setTweetcount(int tweetcount) {
		this.tweetcount = tweetcount;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	HttpServletRequest request = ServletActionContext.getRequest();

	public List<Tweets> getUsertweets() {
		return usertweets;
	}

	public void setUsertweets(List<Tweets> usertweets) {
		this.usertweets = usertweets;
	}

	public Set<String> getUrls() {
		return urls;
	}

	public void setUrls(Set<String> urls) {
		this.urls = urls;
	}

	public String execute() {

		usertweets = new ArrayList<Tweets>();
		urls = new HashSet<String>();
		Map session1 = (Map) ActionContext.getContext().get("session");
		Userdetails userdetails = (Userdetails) session1.get("userdetails");
		List<Follower> list = new FollowerDAO().findMyAll(userdetails
				.getUserid());
		for (int i = 0; i < list.size(); i++) {
			List<Tweets> usertweetss = new TweetsDAO()
					.findAllMyTweets(((Follower) list.get(i))
							.getUserdetailsByFollowmeid().getUserid());
			tweetcount = tweetcount + usertweetss.size();
			Iterator iterable = usertweetss.iterator();
			while (iterable.hasNext()) {
				Tweets tweets = (Tweets) iterable.next();
				urls.add(tweets.getTweeterdesc());
			}

			usertweets.addAll(usertweetss);
		}
		if (usertweets != null) {

			return "success";
		} else {
			addActionError("no tweets");

		}
		return "success";
	}
}
