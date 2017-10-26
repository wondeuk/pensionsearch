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
	public List<questionboard> list(int start, int end) {
		String sql = "select * from ("
				+ "select rownum as rn, A.* from ("
//					+ "select * from board order by no desc"
					+ "select * from questionboard order by boardno desc"				//board를 조회하는데
				+ ")A"
			+ ") where rn between ? and ?";
//		String sql="select * from questionboard order by boardno desc";
		Object[] args = {
				start, end
		};
		RowMapper<questionboard> mapper = (rs, index)->{
			return new questionboard(rs);
		};
		return jdbcTemplate.query(sql, mapper, args);
		
	}
	
	@Override
	public List<questionboard> search(String type, String key, int start, int end) {
		String sql = "select * from ("
				+ "select rownum as rn, A.* from ("
//					+ "select * from board order by no desc"
					+ "select * from questionboard where "+type+" like ? order by boardno desc"				//board를 조회하는데
				+ ")A"
			+ ") where rn between ? and ?";
		Object[] args = {"%"+key+"%", start, end};
		RowMapper<questionboard> mapper = (rs, index)->{
			return new questionboard(rs);
		};
		return jdbcTemplate.query(sql, mapper, args);
	}
	
	
	public int getBoardCount() {
		String sql = "select count(*) from questionboard";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	public int getBoardCount(String type, String key) {
		String sql = "select count(*) from questionboard where "+type+" like ?";
		Object[] args = {
				"%"+key+"%"
		};
		return jdbcTemplate.queryForObject(sql, args, Integer.class);
	}

	
	

}
