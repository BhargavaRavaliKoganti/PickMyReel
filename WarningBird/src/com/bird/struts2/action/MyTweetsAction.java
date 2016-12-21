package com.bird.struts2.action;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bird.daoimpl.TweetsDAO;
import com.bird.pojo.Tweets;
import com.bird.pojo.Userdetails;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class MyTweetsAction extends ActionSupport {
	private List<Tweets> usertweets;
	private static final long serialVersionUID = 1L;

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

	public String execute() {
		Map session1 = (Map) ActionContext.getContext().get("session");
		Userdetails userdetails = (Userdetails) session1.get("userdetails");
		usertweets = new TweetsDAO().findAllMyTweets(userdetails.getUserid());
		if (usertweets != null) {

			Iterator iterator = usertweets.iterator();
			while (iterator.hasNext()) {
				try {
					Tweets tweets = (Tweets) iterator.next();
					Userdetails userdetails1 = tweets.getUserdetails();
					String filepathbackgroundimage = request.getSession()
							.getServletContext().getRealPath("/").concat(
									"images")
							+ "\\" + userdetails1.getUserid() + "0.jpg";

					/*
					 * String filepathbackgroundimage = "c:\\" +
					 * userdetails1.getUserid() + "0.jpg";
					 */byte b1[] = userdetails1.getBackgroundimage()
							.getBytes(
									1,
									(int) userdetails1.getBackgroundimage()
											.length());

					OutputStream fout = new FileOutputStream(
							filepathbackgroundimage);
					fout.write(b1);
					tweets.userdetails
							.setBackgroundimagepath(filepathbackgroundimage);

					String filepathprofileimage = request.getSession()
							.getServletContext().getRealPath("/").concat(
									"images")
							+ "\\" + userdetails1.getUserid() + "1.jpg";

					/*
					 * String filepathprofileimage = "c:\\" +
					 * userdetails1.getUserid() + "1.jpg";
					 */
					byte b2[] = userdetails1.getProfileimage().getBytes(1,
							(int) userdetails1.getProfileimage().length());

					OutputStream fout2 = new FileOutputStream(
							filepathprofileimage);
					fout2.write(b2);
					tweets.userdetails
							.setProfileimagepath(filepathprofileimage);

					System.out.println(userdetails1.getProfileimagepath());
					System.out.println(userdetails1.getBackgroundimagepath());
				} catch (Exception e) {
					System.out.println(e);
				}
				// TODO: handle exception
			}
			return "success";
		} else {
			addActionError("no tweets");

		}
		return "success";
	}
}
