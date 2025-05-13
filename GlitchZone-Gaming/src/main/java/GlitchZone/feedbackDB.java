package GlitchZone;

import java.sql.Connection;
import java.sql.DriverManager;

public class feedbackDB {
	
	private static String url ="jdbc:mysql://localhost:3306/game";
	private static String user ="root";
	private static String pass ="1234";
	
	private static Connection con;
	
	public static Connection getConnection() {
		System.out.println("Connection called");
		try {
			Class.forName("com.mysql.jdbc.Driver");

			con =DriverManager.getConnection(url, user, pass);
			System.out.println("Connected");
		}
		
		catch(Exception e) {
		    System.out.println("Database connection failed!");
		    e.printStackTrace();  
		}

		return con;
		
		
	}
	
	

}