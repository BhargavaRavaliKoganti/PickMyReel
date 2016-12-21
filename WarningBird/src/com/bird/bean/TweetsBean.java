package com.bird.bean;
// default package

import java.math.BigDecimal;
import java.util.Date;

/**
 * Tweets entity. @author MyEclipse Persistence Tools
 */

public class TweetsBean implements java.io.Serializable {

	// Fields

	private BigDecimal tweetid;
	private UserdetailsBean userdetails;
	private String tweeterdesc;
	private Date tweeterposteddate;

	// Constructors

	/** default constructor */
	public TweetsBean() {
	}

	/** minimal constructor */
	public TweetsBean(String tweeterdesc) {
		this.tweeterdesc = tweeterdesc;
	}

	/** full constructor */
	public TweetsBean(UserdetailsBean userdetails, String tweeterdesc,
			Date tweeterposteddate) {
		this.userdetails = userdetails;
		this.tweeterdesc = tweeterdesc;
		this.tweeterposteddate = tweeterposteddate;
	}

	// Property accessors

	public BigDecimal getTweetid() {
		return this.tweetid;
	}

	public void setTweetid(BigDecimal tweetid) {
		this.tweetid = tweetid;
	}

	public UserdetailsBean getUserdetails() {
		return this.userdetails;
	}

	public void setUserdetails(UserdetailsBean userdetails) {
		this.userdetails = userdetails;
	}

	public String getTweeterdesc() {
		return this.tweeterdesc;
	}

	public void setTweeterdesc(String tweeterdesc) {
		this.tweeterdesc = tweeterdesc;
	}

	public Date getTweeterposteddate() {
		return this.tweeterposteddate;
	}

	public void setTweeterposteddate(Date tweeterposteddate) {
		this.tweeterposteddate = tweeterposteddate;
	}

}