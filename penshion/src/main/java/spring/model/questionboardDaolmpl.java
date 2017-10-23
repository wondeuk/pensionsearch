//package spring.model;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.stereotype.Repository;
//
//@Repository("questionboardDao")
//public class questionboardDaolmpl implements questionboardDao{
//
//	@Autowired
//	private JdbcTemplate jdbcTemplate;
//
//	@Override
//	public void insert(String writer, String title, String detail, String pw) {
//		String sql="insert into questionboard values(?,?)";
//		jdbcTemplate.update(sql, writer, title, detail, pw);
//	}
//	
//	
//
//}
