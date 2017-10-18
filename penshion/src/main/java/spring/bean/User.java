package spring.bean;

import javax.servlet.http.HttpServletRequest;

public class User {
	private int no;
	private String id;
	private String name;
	private String pw;
	private String email;
	private String phone;
	private String reg;
	private int mileage;
	private String grade;
	
	public User() {
		super();
	}
	public User(HttpServletRequest request) {
		String no = request.getParameter("no");
		setNo(no == null?0:Integer.parseInt(no));
		setId(request.getParameter("id"));
		setName(request.getParameter("name"));
		setPw(request.getParameter("pw"));
		setEmail(request.getParameter("email"));
		setPhone(request.getParameter("phone"));
		setReg(request.getParameter("reg"));
		String mileage = request.getParameter("mileage");
		setMileage(mileage == null?0:Integer.parseInt(mileage));
		setGrade(request.getParameter("grade"));
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getReg() {
		return reg;
	}
	public void setReg(String reg) {
		this.reg = reg;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	
	
}
