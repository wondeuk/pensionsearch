package spring.model;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import spring.bean.State2;

@Repository("ReserveDao")
public class ReserveDaoImpl implements ReserveDao{
	private Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private MemberDao memberDao;
	
	public void reserveation_insert(Map<String, List<State2>> state_map, String id, String payment_method) {
		
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
			sql = "insert into reservation values(?, ?, ?, ?, sysdate, ?, ?, '입금대기', ?, ?, ?)";
			int member_no = memberDao.info(id).getMember_no();
			
			Object[] args = {
					room_no, reservation_no, member_no,
					value.get(idx).getDate(), value.get(idx).getTot(),
					payment_method, value.get(idx).getAdult(), value.get(idx).getChild(), value.get(idx).getBaby()
			};
			jdbcTemplate.update(sql, args);
			idx++;
		}		
		
		
		
		
	}
	
}
