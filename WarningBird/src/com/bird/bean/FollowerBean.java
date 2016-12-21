package com.bird.bean;
// default package

import java.math.BigDecimal;
import java.util.Date;

/**
 * Follower entity. @author MyEclipse Persistence Tools
 */

public class FollowerBean implements java.io.Serializable {

	// Fields

	private BigDecimal followid;
	private UserdetailsBean userdetailsByFollowmyid;
	private UserdetailsBean userdetailsByFollowmeid;
	private Date followdate;

	// Constructors

	/** default constructor */
	public FollowerBean() {
	}

	/** full constructor */
	public FollowerBean(UserdetailsBean userdetailsByFollowmyid,
			UserdetailsBean userdetailsByFollowmeid, Date followdate) {
		this.userdetailsByFollowmyid = userdetailsByFollowmyid;
		this.userdetailsByFollowmeid = userdetailsByFollowmeid;
		this.followdate = followdate;
	}

	// Property accessors

	public BigDecimal getFollowid() {
		return this.followid;
	}

	public void setFollowid(BigDecimal followid) {
		this.followid = followid;
	}

	public UserdetailsBean getUserdetailsByFollowmyid() {
		return this.userdetailsByFollowmyid;
	}

	public void setUserdetailsByFollowmyid(UserdetailsBean userdetailsByFollowmyid) {
		this.userdetailsByFollowmyid = userdetailsByFollowmyid;
	}

	public UserdetailsBean getUserdetailsByFollowmeid() {
		return this.userdetailsByFollowmeid;
	}

	public void setUserdetailsByFollowmeid(UserdetailsBean userdetailsByFollowmeid) {
		this.userdetailsByFollowmeid = userdetailsByFollowmeid;
	}

	public Date getFollowdate() {
		return this.followdate;
	}

	public void setFollowdate(Date followdate) {
		this.followdate = followdate;
	}

}