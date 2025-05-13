package GlitchZone;

public class feedbackForm {
	
	 private int FId;
	 private String full_name;
	 private String email;
	 private String subject;
	 private String category;
	 private String message;
	 
	 
	 
	 
	 
	public feedbackForm(int fId, String full_name, String email, String subject, String category, String message) {
		super();
		FId = fId;
		this.full_name = full_name;
		this.email = email;
		this.subject = subject;
		this.category = category;
		this.message = message;
	}
	public int getFId() {
		return FId;
	}
	public void setFId(int fId) {
		FId = fId;
	}
	public String getFull_name() {
		return full_name;
	}
	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}