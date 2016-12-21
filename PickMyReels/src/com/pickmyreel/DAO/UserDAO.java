package com.pickmyreel.DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

import com.pickmyreel.model.TicketBean;
import com.pickmyreel.model.UserBean;

public class UserDAO {
	static Logger log = Logger.getLogger(UserDAO.class.getName());
	Statement st=null;
	Connection conn = null;
	private int noOfRecords;
	public UserDAO() throws SQLException, IOException {
		ConnectionDAO connDAO = new ConnectionDAO();
		 conn = connDAO.getConnection();
		 st = conn.createStatement();
		 
	}

	public int createUser(UserBean uBean) {
		int result = 0;
		String user = uBean.getUser();
        String password = uBean.getPassword();
		String query = "insert into user values('"+user+"','"+password+"')";	       
	log.info(user+"-CreatedID and LoggedIn");
		System.out.println(st);
            //execute query
		System.out.println(result);
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
            return result;
 
	}
	
	
	public boolean validateUser(UserBean uBean) throws SQLException{
		String user = uBean.getUser();
        String password = uBean.getPassword();
		 	ResultSet rs = null;			
			String sql = "SELECT * FROM user";					
			System.out.println("connected");
	        rs = st.executeQuery(sql);
	         System.out.println("query excecuted");
	         while(rs.next()){
	        	 String first = rs.getString("username");
	             String last = rs.getString("password");
	        	 if((user.equals(first)) && (password.equals(last))){
	        		 conn.close();
		        	  st.close();
		        	  rs.close();
		        	  log.info(user + "-LoggedIn");
		        	  return true;
	        	 }
	         }
	         log.info(user+"-FailedToLoggin");
			return false;	      
	}
	
	public int getNoOfRecords() {
        return noOfRecords;
    }
	
	public List<TicketBean> historyUser(String name) throws SQLException{
		List<TicketBean> details = new ArrayList<TicketBean>();
		String query = ("select * from details where username='"+ name+"'");
		ResultSet result = st.executeQuery(query);
		TicketBean tb;
		while(result.next()){
	           //Retrieve by column name
	          
	           String  movie = result.getString("movie");
	           String  theater = result.getString("theater");
	           String  time = result.getString("time");
	           String  date = result.getString("date");
	           String  seats = result.getString("seats");
	           int code = result.getInt("uniquecode");
	           String amount = result.getString("amount");
	           tb = new TicketBean(name,movie,theater,time,date,seats,code,amount);
	           details.add(tb);
		}
		System.out.println(details.size());
		log.info(name + "-History");
		return details;
	}
}

	
	
	
	
	
	
	
	
	
	

	
	