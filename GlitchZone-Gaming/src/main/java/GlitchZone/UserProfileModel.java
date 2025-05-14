package GlitchZone;

public class UserProfileModel {
	
		private int id;
		private String fname;
		private String lname;
		private String email;
		private String country;
		private String uName;
		private String password;
		
		
		public UserProfileModel(int id, String fname, String lname, String email, String country, String uName, String password) {
			
			this.id = id;
			this.fname = fname;
			this.lname = lname;
			this.email = email;
			this.country = country;
			this.uName = uName;
			this.password = password;
			
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getFname() {
			return fname;
		}

		public void setFname(String fname) {
			this.fname = fname;
		}

		public String getLname() {
			return lname;
		}

		public void setLname(String lname) {
			this.lname = lname;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getCountry() {
			return country;
		}

		public void setCountry(String country) {
			this.country = country;
		}

		public String getuName() {
			return uName;
		}

		public void setuName(String uName) {
			this.uName = uName;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}
		
}