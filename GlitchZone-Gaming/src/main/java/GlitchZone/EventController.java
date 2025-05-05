package GlitchZone;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;

public class EventController {
	
	//connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data Function
	public static boolean insertdata(String name, String start_date, String end_date, String description, 
			String player_type, String reward_type, String entry_fee) {
		 
		boolean isSuccess = false;
		
		try {
			//DB connection call
			con = EventDBUtil.getConnection();
			stmt = con.createStatement();
			
			//SQL Query 
			String sql = "insert into tournaments values(0,'"+name+"', '"+start_date+"', '"+end_date+"', '"+description+"', '"+player_type+"', '"+reward_type+"', '"+entry_fee+"')";
	
			int result = stmt.executeUpdate(sql);
			
			if(result > 0) {
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
	
	

}
