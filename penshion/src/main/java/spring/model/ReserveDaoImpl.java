package spring.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;

import spring.bean.Reservation;
import spring.bean.State2;

@Repository("ReserveDao")
public class ReserveDaoImpl implements ReserveDao{
	private Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private MemberDao memberDao;
	
	private ResultSetExtractor<Reservation> extractor = new ResultSetExtractor<Reservation>() {
		public Reservation extractData(ResultSet rs) throws SQLException, DataAccessException{
			//rs.next()가 이루어지지 않은 상태로 들어오기 때문에 내가 직접 처리해야 한다
			if(rs.next())
				return new Reservation(rs);
			else
				return null;
		}
	};
	
	
	public void reserveation_insert(Map<String, List<State2>> state_map, String id, String payment_method, int pension_no) {
		
		Set<String> set = state_map.keySet();
		Iterator<String> iter = set.iterator();
		while(iter.hasNext()){
			int idx = 0;
			String key = iter.next();
			List<State2> value = state_map.get(key);
			log.debug("key = " + key + ", value = " + value.get(0).getRoom_name());
			
			int room_no = Integer.parseInt(key.substring(0, key.length()-6));
			log.debug("no:{}", room_no);
			String sql = "select reservation_seq.nextval from dual";
			int reservation_no = jdbcTemplate.queryForObject(sql, Integer.class);
			sql = "insert into reservation values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate, ?, ?, 'waiting', ?, ?, ?)";
			int member_no = memberDao.info(id).getMember_no();
			
			Object[] args = {
					pension_no, room_no, reservation_no, member_no,
					value.get(idx).getPension_name(), value.get(idx).getRoom_name(), value.get(idx).getUser_name(), 
					value.get(idx).getMobile01(), value.get(idx).getMobile02(), value.get(idx).getDate(), 
					value.get(idx).getTot(), payment_method, value.get(idx).getAdult(), 
					value.get(idx).getChild(), value.get(idx).getBaby()
			};
			jdbcTemplate.update(sql, args);
			idx++;
		}		
		
	}

	public void pcEdit(int reservation_no, String payment_condition) {
		String sql = "update reservation set payment_condition=? where reservation_no=?";
		Object[] args = {payment_condition, reservation_no};
		jdbcTemplate.update(sql, args);
	}

	public Reservation info(int reservation_no) {
		String sql = "select * from reservation where reservation_no=?";
		Object[] args = {reservation_no};
		return jdbcTemplate.query(sql, args, extractor);
	}
	
}
