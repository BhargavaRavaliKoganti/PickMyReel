package com.pickmyreel.model;

public class TicketBean {
	String username;
	String movie;
	String theater;
	String time;
	String date;	
	String seats;
	int uniquecode;
	String amount;
	
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMovie() {
		return movie;
	}
	public void setMovie(String movie) {
		this.movie = movie;
	}
	public String getTheater() {
		return theater;
	}
	public void setTheater(String theater) {
		this.theater = theater;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getSeats() {
		return seats;
	}
	public void setSeats(String seats) {
		this.seats = seats;
	}
	public int getUniquecode() {
		return uniquecode;
	}
	public void setUniquecode(int uniquecode) {
		this.uniquecode = uniquecode;
	}
	public TicketBean(String username, String movie, String theater,
			String time, String date, String seats, int uniquecode, String amount) {
		super();
		setDate(date);
		setMovie(movie);
		setSeats(seats);
		setTheater(theater);
		setTime(time);
		setUniquecode(uniquecode);
		setUsername(username);
		setAmount(amount);
	}
	public TicketBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
