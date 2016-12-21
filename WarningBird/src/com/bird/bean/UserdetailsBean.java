package com.bird.bean;
// default package

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Userdetails entity. @author MyEclipse Persistence Tools
 */

public class UserdetailsBean implements java.io.Serializable {

	// Fields

	private int userid;
	private String fullname;
	private String email;
	private String loginname;
	private String password;
	private Date createdate;
	private String profileimage;
	private String backgroundimage;
	private String location;
	private String websiteUrl;
	private String biodata;
	private String phno;
	private String status;
	private Set tweetses = new HashSet(0);
	private Set followersForFollowmyid = new HashSet(0);
	private Set followersForFollowmeid = new HashSet(0);

	// Constructors

	/** default constructor */
	public UserdetailsBean() {
	}

	/** minimal constructor */
	public UserdetailsBean(String loginname, String password) {
		this.loginname = loginname;
		this.password = password;
	}

	/** full constructor */
	public UserdetailsBean(String fullname, String email, String loginname,
			String password, Date createdate, String profileimage,
			String backgroundimage, String location, String websiteUrl,
			String biodata, String phno, String status, Set tweetses,
			Set followersForFollowmyid, Set followersForFollowmeid) {
		this.fullname = fullname;
		this.email = email;
		this.loginname = loginname;
		this.password = password;
		this.createdate = createdate;
		this.profileimage = profileimage;
		this.backgroundimage = backgroundimage;
		this.location = location;
		this.websiteUrl = websiteUrl;
		this.biodata = biodata;
		this.phno = phno;
		this.status = status;
		this.tweetses = tweetses;
		this.followersForFollowmyid = followersForFollowmyid;
		this.followersForFollowmeid = followersForFollowmeid;
	}

	// Property accessors

	public int getUserid() {
		return this.userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getFullname() {
		return this.fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLoginname() {
		return this.loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getCreatedate() {
		return this.createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public String getProfileimage() {
		return this.profileimage;
	}

	public void setProfileimage(String profileimage) {
		this.profileimage = profileimage;
	}

	public String getBackgroundimage() {
		return this.backgroundimage;
	}

	public void setBackgroundimage(String backgroundimage) {
		this.backgroundimage = backgroundimage;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getWebsiteUrl() {
		return this.websiteUrl;
	}

	public void setWebsiteUrl(String websiteUrl) {
		this.websiteUrl = websiteUrl;
	}

	public String getBiodata() {
		return this.biodata;
	}

	public void setBiodata(String biodata) {
		this.biodata = biodata;
	}

	public String getPhno() {
		return this.phno;
	}

	public void setPhno(String phno) {
		this.phno = phno;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Set getTweetses() {
		return this.tweetses;
	}

	public void setTweetses(Set tweetses) {
		this.tweetses = tweetses;
	}

	public Set getFollowersForFollowmyid() {
		return this.followersForFollowmyid;
	}

	public void setFollowersForFollowmyid(Set followersForFollowmyid) {
		this.followersForFollowmyid = followersForFollowmyid;
	}

	public Set getFollowersForFollowmeid() {
		return this.followersForFollowmeid;
	}

	public void setFollowersForFollowmeid(Set followersForFollowmeid) {
		this.followersForFollowmeid = followersForFollowmeid;
	}

}