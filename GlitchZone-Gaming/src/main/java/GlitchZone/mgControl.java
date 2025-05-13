package GlitchZone;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class mgControl {
	//Connect DB
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		//Insert Data Function
		public static boolean insertdata(String title, String genre, String description, String max_players, String game_mode, String release_date, String file_size, String free_or_paid, String price) {
			
			boolean isSuccess = false;
			try {
				//DB CONNECTION CALL
				con=mgDBConnection.getConnection();
				stmt=con.createStatement();
				
				//SQL QUERY
				String sql = "INSERT INTO managegames VALUES(0,'"+title+"','"+genre+"','"+description+"','"+max_players+"','"+game_mode+"','"+release_date+"','"+file_size+"','"+free_or_paid+"','"+price+"')";
				int rs = stmt.executeUpdate(sql); 
				if(rs>0) {
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
		
		//getById 
		public static List<mgModel> getById (String Id){
			
			int convertedID = Integer.parseInt(Id);
				
			ArrayList <mgModel> game = new ArrayList<>();
			
			try {
				//DB Connection
				con = mgDBConnection.getConnection();
				
				
				stmt = con.createStatement();
				
				//Query
				String sql = "select * from managegames where id '"+convertedID+"'";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String title = rs.getString(2);
					String genre = rs.getString(3);
					String max_players = rs.getString(4);
					String description = rs.getString(5);
					String release_date = rs.getString(6);
					String free_or_paid = rs.getString(7);
					String file_size = rs.getString(8);
					String game_mode = rs.getString(9);
					String price = rs.getString(10);
					
					mgModel mg = new mgModel(id,title,genre,max_players,description,release_date,free_or_paid,file_size,game_mode,price);
					game.add(mg);
					}
				
				} catch (Exception e) {
					e.printStackTrace();
				}
				return game;
		}
				

				//getAllData
		public static List<mgModel> getAllGames(){
			ArrayList <mgModel> games = new ArrayList<>();
			
			try {
				//DB Connection
				con = mgDBConnection.getConnection();
				
				stmt = con.createStatement();
				
				//Query
				String sql = "select * from managegames";
				
				rs = stmt.executeQuery(sql);
					
				while(rs.next()) {
					int id = rs.getInt(1);
					String title = rs.getString(2);
					String genre = rs.getString(3);
					String max_players = rs.getString(4);
					String description = rs.getString(5);
					String release_date = rs.getString(6);
					String free_or_paid = rs.getString(7);
					String file_size = rs.getString(8);
					String game_mode = rs.getString(9);
					String price = rs.getString(10);
					
					mgModel mg = new mgModel(id,title,genre,max_players,description,release_date,free_or_paid,file_size,game_mode,price);
					games.add(mg);
				}
			
			} catch (Exception e) {
				e.printStackTrace();
			}
			return games;
		}
		
		//Update data
		
		public static boolean updatedata(String id,String title,String genre,String max_players,String description,String release_date,String free_or_paid,String file_size,String game_mode,String price) {
			try {
				//DB Connection
				con = mgDBConnection.getConnection();
				stmt = con.createStatement();
				
				//SQL Query
				String sql = "update managegames set title='"+title+"',genre='"+genre+"', max_players='"+max_players+"',description='"+description+"',release_date='"+release_date+"',free_or_paid='"+free_or_paid+"',file_size='"+file_size+"',game_mode='"+game_mode+"',price='"+price+"' where id ='"+id+"'";
				
				int rs = stmt.executeUpdate(sql);
				if(rs>0) {
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

		//Delete data
		public static boolean deletedata(String id) {
			int convID = Integer.parseInt(id);
			
			try {
				//DB Connection
				con = mgDBConnection.getConnection();
				stmt = con.createStatement();
				
				String sql = "delete from managegames where id='"+convID+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
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
}