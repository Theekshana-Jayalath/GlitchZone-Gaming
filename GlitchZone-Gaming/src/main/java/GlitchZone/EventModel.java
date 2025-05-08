package GlitchZone;

public class EventModel {
	
	private int tournament_id;
	private String name;
	private String start_date;
	private String end_date;
	private String description;
	private String player_type;
	private String reward_type;
	private String entry_fee;
	
	public EventModel(int tournament_id, String name, String start_date, String end_date, String description,
			String player_type, String reward_type, String entry_fee) {
		super();
		this.tournament_id = tournament_id;
		this.name = name;
		this.start_date = start_date;
		this.end_date = end_date;
		this.description = description;
		this.player_type = player_type;
		this.reward_type = reward_type;
		this.entry_fee = entry_fee;
	}

	public int getTournament_id() {
		return tournament_id;
	}

	public void setTournament_id(int tournament_id) {
		this.tournament_id = tournament_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPlayer_type() {
		return player_type;
	}

	public void setPlayer_type(String player_type) {
		this.player_type = player_type;
	}

	public String getReward_type() {
		return reward_type;
	}

	public void setReward_type(String reward_type) {
		this.reward_type = reward_type;
	}

	public String getEntry_fee() {
		return entry_fee;
	}

	public void setEntry_fee(String entry_fee) {
		this.entry_fee = entry_fee;
	}
	
	

}





