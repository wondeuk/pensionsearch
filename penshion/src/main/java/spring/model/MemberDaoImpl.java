package spring.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import spring.bean.Member;

@Repository(value="UserDao")
public class MemberDaoImpl implements MemberDao{
	private Logger log = LoggerFactory.getLogger(getClass());
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	private RowMapper<Member> mapper = new RowMapper<Member>() {
		@Override
		public Member mapRow(ResultSet rs, int index) throws SQLException {
			return new Member(rs);
		}
	};
	
	private ResultSetExtractor<Member> extractor = new ResultSetExtractor<Member>() {
		public Member extractData(ResultSet rs) throws SQLException, DataAccessException{
			//rs.next()가 이루어지지 않은 상태로 들어오기 때문에 내가 직접 처리해야 한다
			if(rs.next())
				return new Member(rs);
			else
				return null;
		}
	};
	
	//회원 가입 메소드
		public void insert(Member member){
			log.debug("phone:{}", member.getMobile());
			String sql = "select member_seq.nextval from dual";
			int member_no = jdbcTemplate.queryForObject(sql, Integer.class);
			sql = "insert into member values(?, ?, ?, ?, ?, ?, sysdate, 5000, '일반', ?)";
			Object[] args = {member_no, member.getId(), member.getName(), member.getPw(), member.getEmail(), member.getMobile(), member.getAgree()};
			jdbcTemplate.update(sql, args);
		}

		public boolean login(String id, String pw){
			String sql = "select count(*) from member where id=? and pw=?";
			Object[] args = {id, pw};
			int count = jdbcTemplate.queryForObject(sql, args, Integer.class);
			return count > 0;
		}
		
		public String findId(String type, String name, String email) {
			String sql;
			
			if(type.equals("user")) {
				sql = "select id from member where name=? and email=?";
			}else {
				sql = "select id from company where name=? and email=?";
			}
			
			Object[] args = {name, email};
			
			return jdbcTemplate.queryForObject(sql, args, String.class);
		}

		public Member info(String id) {
			String sql = "select * from member where id=?";
			Object[] args = {id};
			return jdbcTemplate.query(sql, extractor, args);
		}
	
}
