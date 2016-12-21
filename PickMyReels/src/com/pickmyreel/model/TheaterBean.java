package com.pickmyreel.model;

public class TheaterBean {
	String movie;
	String theaterName;
	
	public String getMovie() {
		return movie;
	}
	public void setMovie(String movie) {
		this.movie = movie;
	}
	public String getTheaterName() {
		return theaterName;
	}
	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}
	
	public TheaterBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TheaterBean(String movie, String theaterName) {
		super();
		this.movie = movie;
		this.theaterName = theaterName;
		
	}
	

}
