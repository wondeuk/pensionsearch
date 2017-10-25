package spring.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

public class Company {
	private int company_no;
	private String domain;
	private String phone;
	private String crn;
	private String company_name;
	private String location;
	private String email;
	private String id;
	private String pw;
	private String manager_name;
	private String mobile;
	private String reg;
	private String agree;
	
	public Company() {
		super();
	}
	public Company(HttpServletRequest request) {
		String company_no = request.getParameter("company_no");
		setCompany_no(company_no == null?0:Integer.parseInt(company_no));
		setDomain(request.getParameter("domain"));
		String phone01 = request.getParameter("phone01");
		String phone02 = request.getParameter("phone02");
		String phone03 = request.getParameter("phone03");
		setPhone(phone01+"-"+phone02+"-"+phone03);
		setCrn(request.getParameter("crn"));
		setCompany_name(request.getParameter("company_name"));
		String loc01 = request.getParameter("loc01");
		String loc02 = request.getParameter("loc02");
		String loc03 = request.getParameter("loc03");
		setLocation(loc01 +"　"+ loc02 +"　"+ loc03);
		String email01 = request.getParameter("email01");
		String email02 = request.getParameter("email02");
		setEmail(email01+"@"+email02);
		setId(request.getParameter("id"));
		setPw(request.getParameter("pw1"));
		setManager_name(request.getParameter("name"));
		String mobile01 = request.getParameter("mobile01");
		String mobile02 = request.getParameter("mobile02");
		String mobile03 = request.getParameter("mobile03");
		setMobile(mobile01+"-"+mobile02+"-"+mobile03);
		setReg(request.getParameter("reg"));
		setAgree(request.getParameter("agree"));
	}
	
	public Company(ResultSet rs) throws SQLException {
		setCompany_no(rs.getInt("company_no"));
		setDomain(rs.getString("domain"));
		setPhone(rs.getString("phone"));
		setCrn(rs.getString("crn"));
		setCompany_name(rs.getString("company_name"));
		setLocation(rs.getString("location"));
		setEmail(rs.getString("email"));
		setId(rs.getString("id"));
		setPw(rs.getString("pw"));
		setManager_name(rs.getString("manager_name"));
		setMobile(rs.getString("mobile"));
		setReg(rs.getString("reg"));
		setAgree(rs.getString("agree"));
	}
	
	
	public int getCompany_no() {
		return company_no;
	}
	public void setCompany_no(int company_no) {
		this.company_no = company_no;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCrn() {
		return crn;
	}
	public void setCrn(String crn) {
		this.crn = crn;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEmail() {
		return email;
	}
	public String getEmail01() {
		int idx = email.indexOf("@");
		return email.substring(0, idx);
	}
	public String getEmail02() {
		int idx = email.indexOf("@");
		return email.substring(idx+1);
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	public String getMobile() {
		return mobile;
	}
	public String getMobile01() {
		return mobile.substring(0, 3);
	}
	public String getMobile02() {
		return mobile.substring(4, 8);
	}
	public String getMobile03() {
		return mobile.substring(9, 13);
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getReg() {
		return reg;
	}
	public void setReg(String reg) {
		this.reg = reg;
	}
	public String getAgree() {
		return agree;
	}
	public void setAgree(String agree) {
		this.agree = agree;
	}
	@Override
	public String toString() {
		return "Company [company_no=" + company_no + ", domain=" + domain + ", phone=" + phone + ", crn=" + crn
				+ ", company_name=" + company_name + ", location=" + location + ", email=" + email + ", id=" + id
				+ ", pw=" + pw + ", manager_name=" + manager_name + ", mobile=" + mobile + ", reg=" + reg + ", agree="
				+ agree + "]";
	}
	
	
}
