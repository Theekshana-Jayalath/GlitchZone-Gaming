package GlitchZone;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class feedbackController {
	
	
	private static boolean isSuccess;
	private static Connection con;
	private static Statement stmt =null;
	private static ResultSet rs = null;
	
	
	
	// insert data function
	public static boolean insertdata (String full_name, String email, String subject, String category, String message)
	{
		boolean isSuccess = false;
		try {
			//DB connection call
			System.out.println("Insert DAta");
			con=feedbackDB.getConnection();
			stmt=con.createStatement();
			System.out.println(full_name);
			//SQL QUARY
			
			String sql = "insert into feedback values(0,'"+full_name+"', '"+email+"', '"+subject+"', '"+category+"', '"+message+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess =true;
			}
			else 
			{
				isSuccess = false;
			}
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	 public static List<feedbackForm> getById (int ID)
	 {
		 int convertedID = ID;
		 
		 
		 ArrayList <feedbackForm> feedback = new ArrayList<>();
		 
		 try
		 {
			 //DBConnection
			 con = feedbackDB.getConnection();
			 stmt =con.createStatement();
			 
			 //Query
			 String sql = "select* from feedback where FId '"+convertedID+"' ";
			 
			 rs = stmt.executeQuery(sql);
			 while(rs.next())
			 {
				 int FId =rs.getInt(1);
				 String full_name =rs.getString(2);
				 String email =rs.getString(3);
				 String subject =rs.getString(4);
				 String category =rs.getString(5);
				 String message =rs.getString(6);
				 
				 feedbackForm feed = new feedbackForm(FId,full_name,email,subject,category,message);
				 feedback.add(feed);
			 }
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		 return feedback;
	 }
	
	 public static List<feedbackForm> getAllfeedback ()
	 {
	 
	 ArrayList <feedbackForm> feedbacks = new ArrayList<>();
	
	
	 try
	 {
		 //DBConnection
		 con = feedbackDB.getConnection();
		 stmt =con.createStatement();
		 
		 //Query
		 String sql = "select* from feedback ";
		 
		 rs = stmt.executeQuery(sql);
		 while(rs.next())
		 {
			 int FId =rs.getInt(1);
			 String full_name =rs.getString(2);
			 String email =rs.getString(3);
			 String subject =rs.getString(4);
			 String category =rs.getString(5);
			 String message =rs.getString(6);
			 
			 feedbackForm feed = new feedbackForm(FId,full_name,email,subject,category,message);
			 feedbacks.add(feed);
		 }
	 }
	 catch(Exception e)
	 {
		 e.printStackTrace();
	 }
	 return feedbacks;
	
 }
	//Update Data
	 public static boolean updatedata (int FId,String full_name, String email, String subject, String category, String message)
	 {
		 
		 boolean isSuccess = false;
		 
		try {

			 //DBConnection
			 con = feedbackDB.getConnection();
			 stmt =con.createStatement();
			 
			 //Query
			 String sql = "update feedback set full_name='"+full_name+"',email='"+email+"',subject='"+subject+"',category='"+category+"',message='"+message+"'  " 
			                +"where FId="+FId+"";
			 stmt.executeUpdate(sql);
			 System.out.println(sql);
			 isSuccess = true;
					
			 
		}
		catch(Exception e)
		{
			 e.printStackTrace();
		}
		 
		 return isSuccess;
		 
	 }
	 
//Delete Data
	public static boolean deletedata(int id)
	{
		int convID =id;
		
		boolean isSuccess = false;

		try {

			 //DBConnection
			 con = feedbackDB.getConnection();
			 stmt =con.createStatement();
			 String sql = "DELETE FROM feedback WHERE FId = " + convID;

			 
			 int rs =stmt.executeUpdate(sql);
			 
			 
			isSuccess =true;
				
					
			 
	}
		catch(Exception e)
		{
			 e.printStackTrace();
		}
	 
	 return isSuccess;
	}}


