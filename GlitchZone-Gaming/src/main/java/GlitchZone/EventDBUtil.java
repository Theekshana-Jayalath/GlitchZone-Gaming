package GlitchZone;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EventDBUtil {



	public static  ArrayList<Event> validate(String name,String sdate,String edate,String description, String ptype,String rtype , String fee, int id ){
		
		ArrayList<Event> eve = new ArrayList<>();
		
		//create database connection
		String url ="jbdc:mysql://localhost:3306/game";
		String user="root";
		String pass="1234";
		
		//validate
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");	
			
			Connection con = DriverManager.getConnection(url,user,pass);	
			Statement stmt = con.createStatement();
			String sql= "select * from Event where name ='"+name+"' and start_date ='"+sdate+"'and end_date  ='"+edate+"' and description ='"+description+"' and player_type='"+ptype+"' and reward_type='"+rtype+"'and entry_fee='"+fee+"'";
			ResultSet rs = stmt.executeQuery(sql);	
			
			
			if(rs.next()) {
				int tournarment_id = rs.getInt(1);
				String name1 = rs.getString(2);
				String start_date = rs.getString(3);
				String end_date = rs.getString(4);
				String description1 = rs.getString(5);
				String player_type = rs.getString(6);
				String reward_type = rs.getString(7);
				String entry_fee = rs.getString(8);
				
				
				Event E = new Event(id,name,sdate,edate,description,ptype,rtype,fee);
				eve.add(E);
			}
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return eve;
	}
}
