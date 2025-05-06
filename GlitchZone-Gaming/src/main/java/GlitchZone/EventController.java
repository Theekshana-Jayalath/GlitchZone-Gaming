
package GlitchZone;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.ResultSet;

public class EventController {
	
	//connect DB
	private static boolean isSuccess;
	private static Connection con ;
	private static Statement stmt ;
	private static ResultSet rs ;
	
	//Insert Data Function
	public static boolean insertdata(String name, String start_date, String end_date, String description, 
			String player_type, String reward_type, String entry_fee) {
		 
		boolean isSuccess = false;
		System.out.println(name);
		
		try {
			//DB connection call
			Connection con = EventDBUtil.getConnection(); 
			stmt = con.createStatement();
			
			//SQL Query 
			String sql = "insert into tournaments values(0,'"+name+"', '"+start_date+"', '"+end_date+"', '"+description+"', '"+player_type+"', '"+reward_type+"', '"+entry_fee+"')";
	
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		} catch(Exception e) {
			
			e.printStackTrace();
		} 
		
		return isSuccess;
	}
	
	//get by Id
	public static List<EventModel> getById(String Id){
		 int convertedID = Integer.parseInt(Id);
		 
		 ArrayList <EventModel> Event = new ArrayList<>();
		 
		 try {
			 //DB Connection
			 con = EventDBUtil.getConnection();
			 stmt = con.createStatement();
			 
			 //query
			 String sql = "select * from tournaments where id '"+convertedID+"'";
			 
			 rs = stmt.executeQuery(sql);
			 
			 while(rs.next()) {
				 int tournament_id = rs.getInt(1);
				 String name = rs.getString(2);
				 String start_date = rs.getString(3);
				 String end_date = rs.getString(4);
				 String description = rs.getString(5);
				 String player_type = rs.getString(6);
				 String reward_type = rs.getString(7);
				 String entry_fee = rs.getString(8);
				 
				 EventModel eve = new EventModel(tournament_id,name,start_date,end_date,description,player_type,reward_type,entry_fee);
				 Event.add(eve);
			 }
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 return Event;
	}
	
	//Get All
	public static List<EventModel> getAllEvents(){
		
		ArrayList <EventModel> Event = new ArrayList<>();
		
		try {
			 //DB Connection
			 con = EventDBUtil.getConnection();
			 stmt = con.createStatement();
			 
			 //query
			 String sql = "select * from tournaments ";
			 
			 rs = stmt.executeQuery(sql);
			 
			 while(rs.next()) {
				 int tournament_id = rs.getInt(1);
				 String name = rs.getString(2);
				 String start_date = rs.getString(3);
				 String end_date = rs.getString(4);
				 String description = rs.getString(5);
				 String player_type = rs.getString(6);
				 String reward_type = rs.getString(7);
				 String entry_fee = rs.getString(8);
				 
				 EventModel eve = new EventModel(tournament_id,name,start_date,end_date,description,player_type,reward_type,entry_fee);
				 Event.add(eve);
			 }
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 return Event;
	}
	
	//Update data
	public static boolean updatedata(String tournament_id,String name,String start_date,String end_date,String description,String player_type,String reward_type,String entry_fee) {
		
		try {
			 //DB Connection
			 con = EventDBUtil.getConnection();
			 stmt = con.createStatement();
			 
			 //SQL Query
			 String sql = "update tournaments set name='"+name+"', start_date='"+start_date+"',end_date='"+end_date+"',description='"+description+"',player_type='"+player_type+"',reward_type='"+reward_type+"',entry_fee='"+entry_fee+"'"
			 		+ "where id='"+tournament_id+"'";
			 
			 int rs = stmt.executeUpdate(sql);
			 
			 if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			 
		}catch(Exception e) {
			 e.printStackTrace();
		 }
		
		return isSuccess;
	}

	//Delete data
	public static boolean deletedata(String tournament_id) {
		int convID = Integer.parseInt(tournament_id);
		
		try {
			 //DB Connection
			 con = EventDBUtil.getConnection();
			 stmt = con.createStatement();
			 String sql = "delete from tournaments where id='"+convID+"'";
			 
			 int rs = stmt.executeUpdate(sql);
			 
			 if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			 
		}catch(Exception e) {
			 e.printStackTrace();
		 }
		
		return isSuccess;
	}
	
	
}