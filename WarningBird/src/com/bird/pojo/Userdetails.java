package com.bird.pojo;

// default package

import java.io.File;
import java.io.FileInputStream;
import java.sql.Blob;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.hibernate.Hibernate;

/**
 * Userdetails entity. @author MyEclipse Persistence Tools
 */

public class Userdetails implements java.io.Serializable {

	// Fields

	private int userid;
	private String fullname;
	private String email;
	private String loginname;
	private String password;
	private Date createdate;
	private Blob profileimage;
	private Blob backgroundimage;//
	private String backgroundimagepath;
	private String profileimagepath;
	private File profileimagefile;
	private File backgroundimagefile;
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
	public Userdetails() {
	}

	public Userdetails(int userid) {
		this.userid = userid;
	}

	/** minimal constructor */
	public Userdetails(int userid, String loginname, String password) {
		this.userid = userid;
		this.loginname = loginname;
		this.password = password;
	}

	public Userdetails(String loginname, String password) {
		this.loginname = loginname;
		this.password = password;
	}

	/** full constructor */
	public Userdetails(int userid, String fullname, String email,
			String loginname, String password, Date createdate,
			File profileimage, File backgroundimage, String location,
			String websiteUrl, String biodata, String phno, String status,
			Set tweetses, Set followersForFollowmyid, Set followersForFollowmeid) {
		try {
			this.userid = userid;
			this.fullname = fullname;
			this.email = email;
			this.loginname = loginname;
			this.password = password;
			this.createdate = createdate;
			/*byte[] personByteArray = new byte[(int) profileimage.length()];
			Blob b = Hibernate.createBlob(personByteArray);
			FileInputStream fileInputStream = new FileInputStream(profileimage);
			fileInputStream.read(personByteArray);
			fileInputStream.close();*/
			this.profileimagefile = profileimage;

			/*byte[] personByteArray1 = new byte[(int) backgroundimage.length()];
			Blob b1 = Hibernate.createBlob(personByteArray1);
			FileInputStream fileInputStream1 = new FileInputStream(
					backgroundimage);
			fileInputStream1.read(personByteArray1);
			fileInputStream1.close();*/
			this.backgroundimagefile =backgroundimage;
			this.location = location;
			this.websiteUrl = websiteUrl;
			this.biodata = biodata;
			this.phno = phno;
			this.status = status;
		} catch (Exception e) {
			System.out.println("userdetails-con" + e);
		}
	}

	public Userdetails(int userid, String fullname, String email,
			File profileimage, File backgroundimage, String location,
			String websiteUrl, String biodata, String phno) {
		try {
			this.userid = userid;
			this.fullname = fullname;
			this.email = email;

			/*byte[] personByteArray = new byte[(int) profileimage.length()];
			System.out.println(personByteArray.length);
			Blob b = Hibernate.createBlob(personByteArray);
			FileInputStream fileInputStream = new FileInputStream(profileimage);
			fileInputStream.read(personByteArray);
			fileInputStream.close();*/
			this.profileimagefile = profileimage;
			/*byte[] personByteArray1 = new byte[(int) backgroundimage.length()];
			Blob b1 = Hibernate.createBlob(personByteArray1);
			FileInputStream fileInputStream1 = new FileInputStream(
					backgroundimage);
			fileInputStream1.read(personByteArray1);
			fileInputStream1.close();*/
			this.backgroundimagefile = backgroundimage;

			this.location = location;
			this.websiteUrl = websiteUrl;
			this.biodata = biodata;
			this.phno = phno;
		} catch (Exception e) {
			System.out.println("userdetails-con" + e);
		}

	}

	public Userdetails(Userdetails userdetails) {
		this.userid = userdetails.getUserid();
		this.fullname = userdetails.getFullname();
		this.email = userdetails.getEmail();
		this.loginname = userdetails.getLoginname();
		// this.password =userdetails. password;
		this.createdate = userdetails.getCreatedate();
		this.profileimage = userdetails.getProfileimage();
		this.backgroundimage = userdetails.getBackgroundimage();
		this.location = userdetails.getLocation();
		this.websiteUrl = userdetails.getWebsiteUrl();
		this.biodata = userdetails.getBiodata();
		this.phno = userdetails.getPhno();
		this.status = userdetails.getStatus();
		this.tweetses = userdetails.getTweetses();
		this.followersForFollowmyid = userdetails.getFollowersForFollowmyid();
		this.followersForFollowmeid = userdetails.getFollowersForFollowmeid();
	}

	// Property accessors

	public Userdetails(String username, String password, String email, Date date) {
		this.loginname = username;
		this.password = password;
		this.email = email;
		this.createdate = new Date();
		this.status = "active";
	}

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

	public Blob getProfileimage() {
		return profileimage;
	}

	public void setProfileimage(Blob profileimage) {
		this.profileimage = profileimage;
	}

	public Blob getBackgroundimage() {
		return backgroundimage;
	}

	public void setBackgroundimage(Blob backgroundimage) {
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

	public String getBackgroundimagepath() {
		return backgroundimagepath;
	}

	public void setBackgroundimagepath(String backgroundimagepath) {
		this.backgroundimagepath = backgroundimagepath;
	}

	public String getProfileimagepath() {
		return profileimagepath;
	}

	public void setProfileimagepath(String profileimagepath) {
		this.profileimagepath = profileimagepath;
	}

	public File getProfileimagefile() {
		return profileimagefile;
	}

	public void setProfileimagefile(File profileimagefile) {
		this.profileimagefile = profileimagefile;
	}

	public File getBackgroundimagefile() {
		return backgroundimagefile;
	}

	public void setBackgroundimagefile(File backgroundimagefile) {
		this.backgroundimagefile = backgroundimagefile;
	}

}