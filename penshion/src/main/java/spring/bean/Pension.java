package spring.bean;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public class Pension {
	public int company_no;
	public int pension_no;
	public String pension_name;
	public String location;
	public String phone;
	public String pickup;
	public String guide;
	public String caution;
	public String bank;
	public String account;
	public String depositor;
	public String peak_start;
	public String peak_end;
	public String reg;
	public String photo1;
	public String photo2;
	public String photo3;
	public String photo4;
	public String photo5;
	public Pension() {
		super();
	}
	
	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public int getCompany_no() {
		return company_no;
	}
	public void setCompany_no(int company_no) {
		this.company_no = company_no;
	}
	public int getPension_no() {
		return pension_no;
	}
	public void setPension_no(int pension_no) {
		this.pension_no = pension_no;
	}
	public String getPension_name() {
		return pension_name;
	}
	public void setPension_name(String pension_name) {
		this.pension_name = pension_name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPickup() {
		return pickup;
	}
	public void setPickup(String pickup) {
		this.pickup = pickup;
	}
	public String getGuide() {
		return guide;
	}
	public void setGuide(String guide) {
		this.guide = guide;
	}
	public String getCaution() {
		return caution;
	}
	public void setCaution(String caution) {
		this.caution = caution;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getDepositor() {
		return depositor;
	}
	public void setDepositor(String depositor) {
		this.depositor = depositor;
	}
	public String getPeak_start() {
		return peak_start;
	}
	public void setPeak_start(String peak_start) {
		this.peak_start = peak_start;
	}
	public String getPeak_end() {
		return peak_end;
	}
	public void setPeak_end(String peak_end) {
		this.peak_end = peak_end;
	}
	public String getReg() {
		return reg;
	}
	public void setReg(String reg) {
		this.reg = reg;
	}
	public String getPhoto1() {
		return photo1;
	}
	public void setPhoto1(String photo1) {
		this.photo1 = photo1;
	}
	public String getPhoto2() {
		return photo2;
	}
	public void setPhoto2(String photo2) {
		this.photo2 = photo2;
	}
	public String getPhoto3() {
		return photo3;
	}
	public void setPhoto3(String photo3) {
		this.photo3 = photo3;
	}
	public String getPhoto4() {
		return photo4;
	}
	public void setPhoto4(String photo4) {
		this.photo4 = photo4;
	}
	public String getPhoto5() {
		return photo5;
	}
	public void setPhoto5(String photo5) {
		this.photo5 = photo5;
	}
	
	public Pension(HttpServletRequest request, MultipartHttpServletRequest mRequest) {
		String company_no = request.getParameter("company_no");
		setCompany_no(company_no == null?0:Integer.parseInt(company_no));
		setPension_name(request.getParameter("pension_name"));
		setLocation(request.getParameter("sample6_postcode")+request.getParameter("sample6_address")+request.getParameter("sample6_address2"));
		setPhone(request.getParameter("mobile1")+ request.getParameter("mobile2")+ request.getParameter("mobile3"));
		setPickup(request.getParameter("pickup"));
		setGuide(request.getParameter("guide"));
		setCaution(request.getParameter("caution"));
		setBank(request.getParameter("bank"));
		setAccount(request.getParameter("account"));
		setDepositor(request.getParameter("depositor"));
		setPeak_start(request.getParameter("peak_start"));
		setPeak_end(request.getParameter("peak_end"));
		setReg(request.getParameter("reg"));
		String photo1 = mRequest.getFile("photo1").getOriginalFilename();
		setPhoto1(photo1);
		String photo2 = mRequest.getFile("photo2").getOriginalFilename();
		setPhoto1(photo2);
		String photo3 = mRequest.getFile("photo3").getOriginalFilename();
		setPhoto1(photo3);
		String photo4 = mRequest.getFile("photo4").getOriginalFilename();
		setPhoto1(photo4);
		String photo5 = mRequest.getFile("photo5").getOriginalFilename();
		setPhoto1(photo5);

	}


}
