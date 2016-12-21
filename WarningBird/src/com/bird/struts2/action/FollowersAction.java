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
import com.bird.pojo.Tweets;
import com.bird.pojo.Userdetails;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FollowersAction extends ActionSupport {
	private List<Follower> myfollower;
	private static final long serialVersionUID = 1L;

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	HttpServletRequest request = ServletActionContext.getRequest();

	public List<Follower> getMyfollower() {
		return myfollower;
	}

	public void setMyfollower(List<Follower> myfollower) {
		this.myfollower = myfollower;
	}

	public String execute() {
		Map session1 = (Map) ActionContext.getContext().get("session");
		Userdetails userdetails = (Userdetails) session1.get("userdetails");
		myfollower = new FollowerDAO().findMyAll(userdetails.getUserid());
		if (myfollower != null) {

			Iterator iterator = myfollower.iterator();
			while (iterator.hasNext()) {
				try {
					Follower myfollow = (Follower) iterator.next();
					Userdetails userdetailsByFollowmyid = myfollow
							.getUserdetailsByFollowmyid();
					String filepathbackgroundimage = request.getSession()
							.getServletContext().getRealPath("/").concat(
									"images")
							+ "\\"
							+ userdetailsByFollowmyid.getUserid()
							+ "0.jpg";

					/*
					 * String filepathbackgroundimage = "c:\\" +
					 * userdetails1.getUserid() + "0.jpg";
					 */byte b1[] = userdetailsByFollowmyid.getBackgroundimage()
							.getBytes(
									1,
									(int) userdetailsByFollowmyid
											.getBackgroundimage().length());

					OutputStream fout = new FileOutputStream(
							filepathbackgroundimage);
					fout.write(b1);
					myfollow.userdetailsByFollowmeid
							.setBackgroundimagepath(filepathbackgroundimage);

					String filepathprofileimage = request.getSession()
							.getServletContext().getRealPath("/").concat(
									"images")
							+ "\\"
							+ userdetailsByFollowmyid.getUserid()
							+ "1.jpg";

					/*
					 * String filepathprofileimage = "c:\\" +
					 * userdetails1.getUserid() + "1.jpg";
					 */
					byte b2[] = userdetailsByFollowmyid.getProfileimage()
							.getBytes(
									1,
									(int) userdetailsByFollowmyid
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
			addActionError("no tweets");

		}
		return "success";
	}
}
