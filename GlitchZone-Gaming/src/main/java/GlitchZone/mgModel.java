package GlitchZone;

public class mgModel {
	private int id;
	private String title;
	private String genre;
	private String description;
	private String max_players;
	private String game_mode;
	private String release_date;
	private String file_size;
	private String free_or_paid;
	private String price;
	public mgModel(int id, String title, String genre, String description, String max_players, String game_mode,
			String release_date, String file_size, String free_or_paid, String price) {
		super();
		this.id = id;
		this.title = title;
		this.genre = genre;
		this.description = description;
		this.max_players = max_players;
		this.game_mode = game_mode;
		this.release_date = release_date;
		this.file_size = file_size;
		this.free_or_paid = free_or_paid;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMax_players() {
		return max_players;
	}
	public void setMax_players(String max_players) {
		this.max_players = max_players;
	}
	public String getGame_mode() {
		return game_mode;
	}
	public void setGame_mode(String game_mode) {
		this.game_mode = game_mode;
	}
	public String getRelease_date() {
		return release_date;
	}
	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}
	public String getFile_size() {
		return file_size;
	}
	public void setFile_size(String file_size) {
		this.file_size = file_size;
	}
	public String getFree_or_paid() {
		return free_or_paid;
	}
	public void setFree_or_paid(String free_or_paid) {
		this.free_or_paid = free_or_paid;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	
	
	
}