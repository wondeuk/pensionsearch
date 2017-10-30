package spring.bean;

public class State {
	private int room_no;
	private String season;
	private String date;
	private String day;
	private int price;
	private String reservation;
	
	
	
	
	public State() {
		super();
	}
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getReservation() {
		return reservation;
	}
	public void setReservation(String reservation) {
		this.reservation = reservation;
	}
	public int getRoom_no() {
		return room_no;
	}
	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}
	@Override
	public String toString() {
		return "State [room_no=" + room_no + ", season=" + season + ", date=" + date + ", day=" + day + ", price="
				+ price + ", reservation=" + reservation + "]";
	}
	
	
	
	
	
	
}
