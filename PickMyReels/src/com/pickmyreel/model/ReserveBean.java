package com.pickmyreel.model;

public class ReserveBean {
	String username;
	String movie_name;
	Object threater_name;
	String time;
	String date;
	
	
	
	public ReserveBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReserveBean(String username, String movie_name,
			Object threater_name, String time, String date) {
		super();
		setUsername(username);
		setMovie_name(movie_name);
		setTime(time);
		setThreater_name(threater_name);
		setDate(date);
		
		
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMovie_name() {
		return movie_name;
	}
	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	public Object getThreater_name() {
		return threater_name;
	}
	public void setThreater_name(Object threater_name) {
		this.threater_name = threater_name;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	

}
