package com.bird.pojo;

// default package

import java.math.BigDecimal;
import java.util.Date;

/**
 * Tweets entity. @author MyEclipse Persistence Tools
 */

public class Tweets implements java.io.Serializable {

	// Fields

	private int tweetid;
	private int userid;
	public Userdetails userdetails;
	private String tweeterdesc;
	private Date tweeterposteddate;

	// Constructors

	/** default constructor */
	public Tweets() {
	}

	/** minimal constructor */
	public Tweets(int userid, String tweeterdesc) {
		this.userdetails = new Userdetails(userid);
		this.tweeterdesc = tweeterdesc;
		this.tweeterposteddate = new Date();
	}

	/** full constructor */
	public Tweets(int tweetid, Userdetails userdetails, String tweeterdesc,
			Date tweeterposteddate) {
		this.tweetid = tweetid;
		this.userdetails = userdetails;
		this.tweeterdesc = tweeterdesc;
		this.tweeterposteddate = tweeterposteddate;
	}

	// Property accessors

	public int getTweetid() {
		return this.tweetid;
	}

	public void setTweetid(int tweetid) {
		this.tweetid = tweetid;
	}

	public Userdetails getUserdetails() {
		return this.userdetails;
	}

	public void setUserdetails(Userdetails userdetails) {
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

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

}