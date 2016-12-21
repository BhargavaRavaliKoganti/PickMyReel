package com.pickmyreel.DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.pickmyreel.model.ReserveBean;
import com.pickmyreel.model.TheaterBean;
import com.pickmyreel.model.TicketBean;

public class ReserveDAO {
	Statement st=null;
	Connection conn = null;
	static Logger log = Logger.getLogger(ReserveDAO.class.getName());
	public ReserveDAO() throws SQLException, IOException {
		ConnectionDAO connDAO = new ConnectionDAO();
		 conn = connDAO.getConnection();
		 st = conn.createStatement();
	}
	
	/*public int bookTickets(String theater) throws SQLException{
		ResultSet rs = null;
		int last = 0;
		st = conn.createStatement();
		String sql = "SELECT * FROM threaters";
		 rs = st.executeQuery(sql);
		 while(rs.next()){
			 String first = rs.getString("threaterName");
             last = rs.getInt("seatsAvailable");
        
        		if(theater==first){
            	 
	        	  System.out.println(last);
             }
             
		 }return last;
	}*/
	
	public List<String> seat(String theater, String time, String date) throws SQLException{
		List<String> set = new ArrayList<String>();
		String query = ("select seats from details where theater='"+theater+"' and time='"+time+"' and date='"+date+"'");
		ResultSet result = st.executeQuery(query);
		String tb;
		while(result.next()){
			String seat = result.getString("seats");
			tb = new String(seat);
			set.add(tb);
		}
		System.out.println(set.size());
		return set;
	}
	public int reserveSeat(TicketBean tb){
		int result = 0;
		
		String username = tb.getUsername();
		String movie = tb.getMovie();
		String theater = tb.getTheater();
		String time = tb.getTime();
		String date = tb.getDate();
		String seats = tb.getSeats();
		int uniquecode = tb.getUniquecode();
		String amount = tb.getAmount();
		   
		String query = "INSERT INTO details value('" + username + "', '" + movie +  "', '" + theater + "', '" + time + "', '" + date + "', '" + seats + "', '" + uniquecode+ "', '"+amount+"')";
		//execute query
	 try {
		result = st.executeUpdate(query);
		
		
	} catch (SQLException e1) {
		result = 0;
		
		e1.printStackTrace();
	}  
       try{ 
        if(conn != null){
            conn.close();
            }
        if(st != null){
        	st.close();
        	}
       }
       catch(Exception e){
    	   e.printStackTrace();
       }
        System.out.println(result);
        log.info("inSeatChart");
        return result;
		}
	
	public List<TheaterBean> listTheater(String movies) throws SQLException,ClassNotFoundException{
		List<TheaterBean> conCollection = new ArrayList<TheaterBean>();
		
		TheaterBean theaterb;
		String query = "SELECT * FROM theater where moviename='"+movies+"'";
		ResultSet result = st.executeQuery(query);
		
		
		//System.out.println(result.next());
		while(result.next()){
			
	           //Retrieve by column name
			
	           String  movie = result.getString("moviename");
	           String  theater = result.getString("theatherName");
	          // int  seats = result.getInt("seats");
	         
	           theaterb = new TheaterBean(movie, theater);
	           conCollection.add(theaterb);
		}
		System.out.println(conCollection.size());
		log.info(movies + "--Listing theaters");
		return conCollection;
	}
	
	public String getProfilePic(String movie) throws SQLException {
		String dp = null;
		String query = "select pic from theater where moviename='" + movie + "';";
		ResultSet rs = null;
		rs = st.executeQuery(query);
		while (rs.next()) {
			dp = rs.getString("pic");

		}

		return dp;

	}
	
	
	}
