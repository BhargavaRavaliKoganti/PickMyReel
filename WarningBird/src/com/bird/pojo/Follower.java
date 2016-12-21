package com.bird.pojo;

// default package

import java.util.Date;

/**
 * Follower entity. @author MyEclipse Persistence Tools
 */

public class Follower implements java.io.Serializable {

	// Fields

	private int followid;
	public Userdetails userdetailsByFollowmyid;
	public Userdetails userdetailsByFollowmeid;
	private int followmyid;
	private int followmeid;
	private String followstatus;

	private Date followdate;

	// Constructors

	/** default constructor */
	public Follower() {
	}

	/** minimal constructor */
	public Follower(int followid) {
		this.followid = followid;
	}

	/** full constructor */
	public Follower(int followid, Userdetails userdetailsByFollowmyid,
			Userdetails userdetailsByFollowmeid, Date followdate) {
		this.followid = followid;
		this.userdetailsByFollowmyid = userdetailsByFollowmyid;
		this.userdetailsByFollowmeid = userdetailsByFollowmeid;
		this.followdate = followdate;
	}

	public Follower(int followmyid, int followmeid) {
		this.userdetailsByFollowmyid = new Userdetails(followmyid);
		this.userdetailsByFollowmeid = new Userdetails(followmeid);
		this.followdate = new Date();
		this.followstatus = "following";

	}

	public Follower(int followmyid, int followmeid, String status) {
		this.userdetailsByFollowmyid = new Userdetails(followmyid);
		this.userdetailsByFollowmeid = new Userdetails(followmeid);
		this.followstatus = status;

	}

	// Property accessors

	public int getFollowid() {
		return this.followid;
	}

	public void setFollowid(int followid) {
		this.followid = followid;
	}

	public Userdetails getUserdetailsByFollowmyid() {
		return this.userdetailsByFollowmyid;
	}

	public void setUserdetailsByFollowmyid(Userdetails userdetailsByFollowmyid) {
		this.userdetailsByFollowmyid = userdetailsByFollowmyid;
	}

	public Userdetails getUserdetailsByFollowmeid() {
		return this.userdetailsByFollowmeid;
	}

	public void setUserdetailsByFollowmeid(Userdetails userdetailsByFollowmeid) {
		this.userdetailsByFollowmeid = userdetailsByFollowmeid;
	}

	public Date getFollowdate() {
		return this.followdate;
	}

	public void setFollowdate(Date followdate) {
		this.followdate = followdate;
	}

	public int getFollowmyid() {
		return followmyid;
	}

	public void setFollowmyid(int followmyid) {
		this.followmyid = followmyid;
	}

	public int getFollowmeid() {
		return followmeid;
	}

	public void setFollowmeid(int followmeid) {
		this.followmeid = followmeid;
	}

	public String getFollowstatus() {
		return followstatus;
	}

	public void setFollowstatus(String followstatus) {
		this.followstatus = followstatus;
	}

}