package spring.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import spring.bean.Pension;

@Repository("pensionDao")
public class PensionDaoImpl implements PensionDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public void insert(Pension pension) {
		String sql ="insert into pension values(?, pension_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate, ?, ?, ?, ?, ?)";
		Object[] args = {
				pension.getCompany_no(), pension.getPension_name(), pension.getLocation(),
				pension.getPhone(), pension.getPickup(), pension.getGuide(), pension.getCaution(),
				pension.getBank(), pension.getAccount(), pension.getDepositor(), pension.getPeak_start(),
				pension.getPeak_end(), pension.getPhoto1(), pension.getPhoto2(), pension.getPhoto3(), pension.getPhoto4(), pension.getPhoto5()
		};
		jdbcTemplate.update(sql, args);
		
	}

}
