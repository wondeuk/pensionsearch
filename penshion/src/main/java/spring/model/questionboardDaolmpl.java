package spring.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import spring.bean.questionboard;

@Repository("questionboardDao")
public class questionboardDaolmpl implements questionboardDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;

	
//	@Override
//	public void insert(String writer, String title, String detail, String pw) {
//		String sql="insert into questionboard values(questionboard_seq.nextval,?,?, ?, ?)";
//		jdbcTemplate.update(sql, writer, title, detail, pw);
//	}
	@Override
	public void insert(questionboard q) {
		String sql="insert into questionboard values(questionboard_seq.nextval, ?, ?, ?, ?, sysdate)";
		Object[] args = {
				q.getWriter(), q.getTitle(), q.getDetail(), q.getPw()
		};
		jdbcTemplate.update(sql, args);
		
	}
	
	@Override
	public List<questionboard> list() {
		String sql="select * from questionboard order by boardno desc";
		RowMapper<questionboard> mapper = (rs, index)->{
			return new questionboard(rs);
		};
		return jdbcTemplate.query(sql, mapper);
	}


	
	

}
