package GlitchZone;

import java.sql.Connection;

import java.sql.ResultSet;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserProfileController {
	//Connect DB
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		//Insert data function
	    public static boolean insertdata(String fname, String lname, String email,
	                                     String country, String uName, String password) {
	        boolean isSuccess = false;

	        try {
	        	//DB Connection call
	            con = UserProfileDB.getConnection();
	            stmt = con.createStatement();
	            
	            //SQL QUERY
	            String sql = "INSERT INTO profile VALUES (0, '"+fname+"', '"+lname+"', '"+email+"', '"+country+"', '"+uName+"', '"+password+"')";
	            int rs = stmt.executeUpdate(sql);
	            if (rs > 0) {
	                isSuccess = true;
	            }
	            else {
	            	isSuccess = false; 
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return isSuccess;
	    }
	    
	    //Login validate
	    public static List<UserProfileModel> loginValidate(String uName, String password){
	    	
	    	ArrayList<UserProfileModel> user = new ArrayList<>();
	    	try {
	    		//DB CONNECTION CALL
	    		con=UserProfileDB.getConnection();
	    		stmt=con.createStatement();
	    		
	    		String sql = "select * from profile where "+" uName = '"+uName+"' and password = '"+password+"'";
	    		
	    		rs = stmt.executeQuery(sql);
	    		   		
	    		if(rs.next()) {
	    			
	    			int id = rs.getInt(1);
	    			String fname = rs.getString(2);
	    			String lname = rs.getString(3);
	    			String email = rs.getString(4);
	    			String country = rs.getString(5);
	    			String uname = rs.getString(6);
	    			String Password = rs.getString(7);
	    			
	    			UserProfileModel u = new UserProfileModel(id, fname, lname, email, country, uname, Password);
	    			user.add(u);
	    	 	}
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	return user;
	    }
	    public static List<UserProfileModel> userProfile (String Id){
	    	int convertID = Integer.parseInt(Id);
	    	
	    	ArrayList<UserProfileModel> user = new ArrayList<>();
	    	
	    	try {
	    		//DB CONNECTION CALL
	    		con = UserProfileDB.getConnection();
	    		stmt=con.createStatement();
	    		
	    		String sql = "select * from profile where id = '"+convertID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		if(rs.next()) {
	    			int id = rs.getInt(1);
	    			String fname = rs.getString(2);
	    			String lname = rs.getString(3);
	    			String email = rs.getString(4);
	    			String country = rs.getString(5);
	    			String uname = rs.getString(6);
	    			String Password = rs.getString(7);
	    			
	    			UserProfileModel u = new UserProfileModel(id, fname, lname, email, country, uname, Password);
	    			user.add(u); 
	    		}
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	return user;
	    }

	    public static boolean isUserNameOrPasswordUsed(String uName, String password) {
	        boolean exists = false;
	        try {
	            con = UserProfileDB.getConnection();
	            stmt = con.createStatement();
	            // Query to check if username or password exists
	            String sql = "SELECT * FROM profile WHERE uName = '" + uName + "' OR password = '" + password + "'";
	            rs = stmt.executeQuery(sql);
	            if (rs.next()) {
	                exists = true;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return exists;
	    }

	    //User Profile Update
	    public static boolean updateProfile(String id, String fname, String lname, String email, String country, String uName, String password) {
	    	try {
	    		//DB Connection call
	            con = UserProfileDB.getConnection();
	            stmt = con.createStatement();
	            
	            //SQL Query
	            String sql = "update profile set fname = '"+fname+"', lname = '"+lname+"', email = '"+email+"', country = '"+country+"', uName = '"+uName+"', password = '"+password+"'"
	            	+"where id = '"+id+"'";
	            
	            int rs = stmt.executeUpdate(sql);
	           
	            if (rs > 0) {
	                isSuccess = true;
	            }
	            else {
	            	isSuccess = false; 
	            }
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	return isSuccess;
	    }
	    public static List<UserProfileModel> getById (String Id){
	    	
	    	int convertedID = Integer.parseInt(Id);
	    	
	    	ArrayList <UserProfileModel> user = new ArrayList<>();
	    	
	    	try {
	    		//DB Connection call
	            Connection con = UserProfileDB.getConnection();
	            stmt = con.createStatement();
	            
	            //Query
	            String sql= "select * from profile where id='"+convertedID+"'";
	    	
	            rs = stmt.executeQuery(sql);
	            
	            while(rs.next()) {
	            	int id = rs.getInt(1);
	            	String fname = rs.getString(2);
	            	String lname = rs.getString(3);
	            	String email = rs.getString(4);
	            	String country = rs.getString(5);
	            	String uName = rs.getString(6);
	            	String password = rs.getString(7);
	            	
	            	System.out.println(fname);
	            	UserProfileModel pm = new UserProfileModel(id, fname, lname, email, country, uName, password);
	            	user.add(pm);
	            }
	    	}
	    	catch(Exception e){
	    		e.printStackTrace();
	    	}
	    	return user;
	    }
	    public static boolean deleteData(String id) {
	    	int convID = Integer.parseInt(id);
	    	try {
	    		//DBConnection
	    		Connection con = UserProfileDB.getConnection();
	            stmt = con.createStatement();
	            String sql = "delete from profile where id = '"+convID+"'";
	            
	            int rs = stmt.executeUpdate(sql); 
	            
	            if (rs > 0) {
	                isSuccess = true;
	            }
	            else {
	            	isSuccess = false; 
	            }
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	return isSuccess;
	    }
	    public static boolean isEmailRegistered(String email) {
	        boolean exists = false;
	        try {
	            con = UserProfileDB.getConnection();
	            stmt = con.createStatement();
	            String sql = "SELECT * FROM profile WHERE email = '" + email + "'";
	            rs = stmt.executeQuery(sql);

	            if (rs.next()) {
	                exists = true;
	            }
	            rs.close();
	            stmt.close();
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return exists;
	    }

	    // Update password for given email
	    public static boolean updatePasswordByEmail(String email, String newPassword) {
	        try {
	            con = UserProfileDB.getConnection();
	            stmt = con.createStatement();
	            String sql = "UPDATE profile SET password = '" + newPassword + "' WHERE email = '" + email + "'";
	            int rs = stmt.executeUpdate(sql);

	            if (rs > 0) {
	                isSuccess = true;
	            } else {
	                isSuccess = false;
	            }
	            stmt.close();
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	            isSuccess = false;
	        }
	        return isSuccess;
	    }
	    
	     
	        // Admin login validation
	        public static List<AdminModel> adminLoginValidate(String username, String password) {
	            ArrayList<AdminModel> admin = new ArrayList<>();
	            
	            try {
	                // DB CONNECTION
	                con = UserProfileDB.getConnection();
	                stmt = con.createStatement();
	                
	                String sql = "SELECT * FROM admin WHERE username = '" + username + "' AND password = '" + password + "'";
	                rs = stmt.executeQuery(sql);
	                
	                if (rs.next()) {
	                    int id = rs.getInt(1);
	                    String uname = rs.getString(2);
	                    String pwd = rs.getString(3);
	                    
	                    AdminModel a = new AdminModel(id, uname, pwd);
	                    admin.add(a);
	                }
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	            
	            return admin;
	        }
	        
	        // Get all user profiles for admin view
	        public static List<UserProfileModel> getAllProfiles() {
	            ArrayList<UserProfileModel> profiles = new ArrayList<>();
	            
	            try {
	                con = UserProfileDB.getConnection();
	                stmt = con.createStatement();
	                
	                String sql = "SELECT * FROM profile";
	                rs = stmt.executeQuery(sql);
	                
	                while (rs.next()) {
	                    int id = rs.getInt(1);
	                    String fname = rs.getString(2);
	                    String lname = rs.getString(3);
	                    String email = rs.getString(4);
	                    String country = rs.getString(5);
	                    String uname = rs.getString(6);
	                    String password = rs.getString(7);
	                    
	                    UserProfileModel user = new UserProfileModel(id, fname, lname, email, country, uname, password);
	                    profiles.add(user);
	                }
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	            
	            return profiles;
}
}
