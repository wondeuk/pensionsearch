package spring.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Reservation {
	private int pension_no;
	private int room_no;
	private int reservation_no;
	private int member_no;
	private String pension_name;
	private String room_name;
	private String user_name;
	private String mobile01;
	private String mobile02;
	private String date;
	private String payment_reg;
	private int payment_price;
	private String payment_method;
	private String payment_condition;
	private int adult;
	private int child;
	private int baby;
	
	
	public Reservation() {
		super();
	}
	
	public Reservation(ResultSet rs) throws SQLException {
		setPension_no(rs.getInt("pension_no"));
		setRoom_no(rs.getInt("room_no"));
		setReservation_no(rs.getInt("reservation_no"));
		setMember_no(rs.getInt("member_no"));
		setPension_name(rs.getString("pension_name"));
		setRoom_name(rs.getString("room_name"));
		setUser_name(rs.getString("user_name"));
		setMobile01(rs.getString("mobile01"));
		setMobile02(rs.getString("mobile02"));
		setDate(rs.getString("checkin"));
		setPayment_reg(rs.getString("payment_reg"));
		setPayment_price(rs.getInt("payment_price"));
		setPayment_method(rs.getString("payment_method"));
		setPayment_condition(rs.getString("payment_condition"));
		setAdult(rs.getInt("adult"));
		setChild(rs.getInt("child"));
		setBaby(rs.getInt("baby"));
	}
	
	
	
	public String getMobile01() {
		return mobile01;
	}

	public String getPension_name() {
		return pension_name;
	}

	public void setPension_name(String pension_name) {
		this.pension_name = pension_name;
	}

	public void setMobile01(String mobile01) {
		this.mobile01 = mobile01;
	}

	public String getMobile02() {
		return mobile02;
	}

	public void setMobile02(String mobile02) {
		this.mobile02 = mobile02;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public int getPension_no() {
		return pension_no;
	}

	public void setPension_no(int pension_no) {
		this.pension_no = pension_no;
	}

	public int getAdult() {
		return adult;
	}

	public void setAdult(int adult) {
		this.adult = adult;
	}

	public int getChild() {
		return child;
	}

	public void setChild(int child) {
		this.child = child;
	}

	public int getBaby() {
		return baby;
	}

	public void setBaby(int baby) {
		this.baby = baby;
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
	public String getDate() {
		return date.substring(0, 10);
	}
	public void setDate(String date) {
		this.date = date;
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
		return "Reservation [pension_no=" + pension_no + ", room_no=" + room_no + ", reservation_no=" + reservation_no
				+ ", member_no=" + member_no + ", pension_name=" + pension_name + ", room_name=" + room_name
				+ ", user_name=" + user_name + ", mobile01=" + mobile01 + ", mobile02=" + mobile02 + ", date=" + date
				+ ", payment_reg=" + payment_reg + ", payment_price=" + payment_price
				+ ", payment_method=" + payment_method + ", payment_condition=" + payment_condition + ", adult=" + adult
				+ ", child=" + child + ", baby=" + baby + "]";
	}


}
