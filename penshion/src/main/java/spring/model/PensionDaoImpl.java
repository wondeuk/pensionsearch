package spring.model;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import spring.bean.Pension;

@Repository("pensionDao")
public class PensionDaoImpl implements PensionDao{
	private Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	private ResultSetExtractor<Pension> extractor = new ResultSetExtractor<Pension>() {
		public Pension extractData(ResultSet rs) throws SQLException, DataAccessException{
			//rs.next()가 이루어지지 않은 상태로 들어오기 때문에 내가 직접 처리해야 한다
			if(rs.next())
				return new Pension(rs);
			else
				return null;
		}
	};
	
	public int insert(int company_no, Pension pension) {
		String sql = "select pension_seq.nextval from dual";
		int pension_no = jdbcTemplate.queryForObject(sql, Integer.class);
		
		sql ="insert into pension values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate, ?, ?, ?, ?, ?, 0, ?, ?, ?)";

		Long time = System.currentTimeMillis();
		Object[] args = {
				company_no, pension_no, pension.getPension_name(),
				pension.getPhone(), pension.getPickup(), pension.getGuide(), pension.getCaution(),
				pension.getBank(), pension.getAccount(), pension.getDepositor(), pension.getPeak_start(),
				pension.getPeak_end(), "["+pension_no+"]"+"("+time+")"+pension.getPhoto1(), 
				"["+pension_no+"]"+"("+time+")"+pension.getPhoto2(), "["+pension_no+"]"+"("+time+")"+pension.getPhoto3(), 
				"["+pension_no+"]"+"("+time+")"+pension.getPhoto4(), "["+pension_no+"]"+"("+time+")"+pension.getPhoto5(), 
				pension.getLocation01(), pension.getLocation02(), pension.getLocation03()
		};
		jdbcTemplate.update(sql, args);
		return pension_no;
	}


	@Override
	public List<Pension> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pension pensionInfo(int no) {
		String sql = "select * from pension where pension_no =?";
//		jdbcTemplate.query(sql, no);
		return null;
	}




	public Pension info(int pension_no) {
		String sql = "select * from pension where pension_no=?";
		Object[] args = {pension_no};
		return jdbcTemplate.query(sql, extractor, args);
	}

	public List<Pension> list_latest() {
		String sql = "select * from pension order by read desc";
		RowMapper<Pension> mapper = (rs, index)->{
			return new Pension(rs);
		};
		return jdbcTemplate.query(sql, mapper);
	}


	@Override
	public void insert(Pension pension) {
		// TODO Auto-generated method stub
		
	}
	
	public void plusRead(int pension_no) {
		String sql = "update pension set read=read+1 where pension_no=?";
		Object[] args = {pension_no};
		jdbcTemplate.update(sql, args);
	}

	public List<Pension> myPension(int company_no) {
		String sql = "select * from pension where company_no=?";
		Object[] args = {company_no};
		RowMapper<Pension> mapper = (rs, index)->{
			return new Pension(rs);
		};
		return jdbcTemplate.query(sql, args, mapper);
	}


}
