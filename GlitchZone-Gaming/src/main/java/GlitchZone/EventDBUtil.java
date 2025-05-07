package GlitchZone;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class EventDBUtil {
			
		//create database connection
			private	static String url ="jdbc:mysql://localhost:3306/game";
			private	static String user="root";
			private	static String pass="1234";
			private static Connection con;
				
			public static Connection getConnection() {
			Connection con = null;
						
				try {
					
					Class.forName("com.mysql.jdbc.Driver");		
					
					System.out.println("connected:");
			
					}catch(Exception e) {
								System.out.println("Database not connect:");
							}
				return con;
			}
	
			
	}




/*public static void main(String[] args) throws ClassNotFoundException, SQLException{
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/game","root","1234");
		System.out.println("Database connected");
}*/



