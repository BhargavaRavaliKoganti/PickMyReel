package com.bird.struts2.action;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bird.daoimpl.FollowerDAO;
import com.bird.daoimpl.TweetsDAO;
import com.bird.pojo.Follower;
import com.bird.pojo.Tweets;
import com.bird.pojo.Userdetails;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class MeAllTweetsAction extends ActionSupport {
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
		usertweets=new ArrayList<Tweets>();
		Map session1 = (Map) ActionContext.getContext().get("session");
		Userdetails userdetails = (Userdetails) session1.get("userdetails");
		List<Follower> list = new FollowerDAO().findMyAll(userdetails
				.getUserid());
		System.out.println("sizeiiiiiiiiiii" + list.size());
		for (int i = 0; i < list.size(); i++) {
			List<Tweets> usertweetss = new TweetsDAO()
					.findAllMyTweets(((Follower) list.get(i))
							.getUserdetailsByFollowmeid().getUserid());
			System.out.println("iiiiiiiiiiiii"+usertweetss.size());

			usertweets.addAll(usertweetss);
		}
		if (usertweets != null) {

			Iterator iterator = usertweets.iterator();
			while (iterator.hasNext()) {
				try {
					Tweets tweets = (Tweets) iterator.next();
					Userdetails userdetails1 = tweets.getUserdetails();

					String profileimage = request.getSession()
							.getServletContext().getRealPath("/").concat(
									"images")
							+ "\\" + userdetails1.getUserid() + "0.jpg";
					byte b1[] = userdetails1.getProfileimage().getBytes(1,
							(int) userdetails1.getProfileimage().length());
					OutputStream fout = new FileOutputStream(profileimage);
					fout.write(b1);
					tweets.userdetails.setProfileimagepath(profileimage);

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
