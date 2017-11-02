package spring.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import spring.bean.Answer;
import spring.bean.Question;

@Repository(value="miniDao")
public class MiniDaoImpl implements MiniDao{
	private Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private ServletContext servletContext;
	
	private ResultSetExtractor<Question> extractor = new ResultSetExtractor<Question>() {
		public Question extractData(ResultSet rs) throws SQLException, DataAccessException{
			//rs.next()가 이루어지지 않은 상태로 들어오기 때문에 내가 직접 처리해야 한다
			if(rs.next())
				return new Question(rs);
			else
				return null;
		}
	};
	
	private ResultSetExtractor<Answer> extractor1 = new ResultSetExtractor<Answer>() {
		public Answer extractData(ResultSet rs) throws SQLException, DataAccessException{
			//rs.next()가 이루어지지 않은 상태로 들어오기 때문에 내가 직접 처리해야 한다
			if(rs.next())
				return new Answer(rs);
			else
				return null;
		}
	};


	//질문 올리기
	@Override
	public void insert(Question question) {
		String sql = "select question_seq.nextval from dual";
		int	question_no = jdbcTemplate.queryForObject(sql,Integer.class);
		
		sql = "insert into question values(?,?,?,?,?,sysdate, 0, 0)";
		Object[] args = {
				question.getPension_no(), question_no, question.getTitle(), 
				question.getDetail(), question.getId()
		};
		jdbcTemplate.update(sql, args);
	}

	//해당 목록 꺼내오기
	@Override
	public List<Question> list(int pension_no) {
		String sql = "select * from question where pension_no=? order by reg desc";
		RowMapper<Question> mapper = (rs, index)->{
			return new Question(rs);
		};
		return jdbcTemplate.query(sql, mapper, pension_no);
	}
	
	

}
