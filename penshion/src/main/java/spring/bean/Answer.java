package spring.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

public class Answer {
	public int question_no;
	public int answer_no;
	public String detail;
	public String reg;
	
	public Answer(ResultSet rs) throws SQLException {
		setQuestion_no(rs.getInt("question_no"));
		setAnswer_no(rs.getInt("answer_no"));
		setDetail(rs.getString("detail"));
		setReg(rs.getString("reg"));
	}
	
	public Answer(HttpServletRequest request) {
		String question_no = request.getParameter("question_no");
		setQuestion_no(question_no == null?0:Integer.parseInt(question_no));
		String answer_no = request.getParameter("queanswer_nostion_no");
		setAnswer_no(answer_no == null?0:Integer.parseInt(answer_no));
		setDetail(request.getParameter("detail"));
		setReg(request.getParameter("reg"));
	}
	
	public Answer() {
		super();
	}

	public int getQuestion_no() {
		return question_no;
	}

	public void setQuestion_no(int question_no) {
		this.question_no = question_no;
	}

	public int getAnswer_no() {
		return answer_no;
	}

	public void setAnswer_no(int answer_no) {
		this.answer_no = answer_no;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getReg() {
		return reg;
	}

	public void setReg(String reg) {
		this.reg = reg;
	}
	
	
}
