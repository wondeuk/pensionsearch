package spring.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Reservation {
	private int room_no;
	private int reservation_no;
	private int member_no;
	private String checkin;
	private int stay;
	private String payment_reg;
	private int payment_price;
	private String payment_method;
	private String payment_condition;
	
	
	public Reservation() {
		super();
	}
	
	public Reservation(ResultSet rs) throws SQLException {
		setRoom_no(rs.getInt("room_no"));
		setReservation_no(rs.getInt("reservation_no"));
		setMember_no(rs.getInt("member_no"));
		setCheckin(rs.getString("checkin"));
		setStay(rs.getInt("stay"));
		setPayment_reg(rs.getString("payment_reg"));
		setPayment_price(rs.getInt("payment_price"));
		setPayment_method(rs.getString("payment_method"));
		setPayment_condition(rs.getString("payment_condition"));
	}
	
	
	public int getRoom_no() {
		return room_no;
	}
	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}
	public int getReservation_no() {
		return reservation_no;
	}
	public void setReservation_no(int reservation_no) {
		this.reservation_no = reservation_no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public int getStay() {
		return stay;
	}
	public void setStay(int stay) {
		this.stay = stay;
	}
	public String getPayment_reg() {
		return payment_reg;
	}
	public void setPayment_reg(String payment_reg) {
		this.payment_reg = payment_reg;
	}
	public int getPayment_price() {
		return payment_price;
	}
	public void setPayment_price(int payment_price) {
		this.payment_price = payment_price;
	}
	public String getPayment_method() {
		return payment_method;
	}
	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}
	public String getPayment_condition() {
		return payment_condition;
	}
	public void setPayment_condition(String payment_condition) {
		this.payment_condition = payment_condition;
	}
	@Override
	public String toString() {
		return "Reservation [room_no=" + room_no + ", reservation_no=" + reservation_no + ", member_no=" + member_no
				+ ", checkin=" + checkin + ", stay=" + stay + ", payment_reg=" + payment_reg + ", payment_price="
				+ payment_price + ", payment_method=" + payment_method + ", payment_condition=" + payment_condition
				+ "]";
	}
	
	
	
	
	
}
