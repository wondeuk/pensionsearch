package spring.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class questionboard {
	private String writer;
	private String title;
	private String detail;
	private String pw;
	public questionboard(ResultSet rs) throws SQLException{
		setWriter(rs.getString("writer"));
		setTitle(rs.getString("title"));
		setDetail(rs.getString("detail"));
		setPw(rs.getString("pw"));
		
	}
	public questionboard() {
		super();
	}
	
	
	@Override
	public String toString() {
		return "questionboard [writer=" + writer + ", title=" + title + ", detail=" + detail + ", pw=" + pw + "]";
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
}
	
	
	
	

	