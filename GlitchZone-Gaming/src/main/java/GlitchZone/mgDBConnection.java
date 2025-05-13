package GlitchZone;

import java.sql.Connection;
import java.sql.DriverManager;


public class mgDBConnection {
			
		//create database connection
			private	static String url ="jdbc:mysql://localhost:3306/game";
			private	static String user="root";
			private	static String pass="1234";
			private static Connection con;
				
			public static Connection getConnection() {
				
						
				try {
					
					Class.forName("com.mysql.cj.jdbc.Driver");		
					 con = DriverManager.getConnection(url,user,pass);
					System.out.println("connected:");
			
					}catch(Exception e) {
								System.out.println("Database not connect:");
							}
				return con;
			}		
	}

