package GlitchZone;

public class Event {
	
	private int id;
	private String name;
	private String sdate;
	private String edate;
	private String description;
	private String ptype;
	private String rtype;
	private String fee;
	
	
	public Event(int id,String name, String sdate, String edate, String description, String ptype, String rtype, String fee) {
		this.id=id;
		this.name = name;
		this.sdate = sdate;
		this.edate = edate;
		this.description = description;
		this.ptype = ptype;
		this.rtype = rtype;
		this.fee = fee;
	}



	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getSdate() {
		return sdate;
	}


	public void setSdate(String sdate) {
		this.sdate = sdate;
	}


	public String getEdate() {
		return edate;
	}


	public void setEdate(String edate) {
		this.edate = edate;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getPtype() {
		return ptype;
	}


	public void setPtype(String ptype) {
		this.ptype = ptype;
	}


	public String getRtype() {
		return rtype;
	}


	public void setRtype(String rtype) {
		this.rtype = rtype;
	}


	public String getFee() {
		return fee;
	}


	public void setFee(String fee) {
		this.fee = fee;
	}
	
	
}
