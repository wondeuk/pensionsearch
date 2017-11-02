package spring.model;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.bean.Reservation;
import spring.bean.State2;

@Repository
public interface ReserveDao {

	void reserveation_insert(Map<String, List<State2>> state_map, String id, String payment_method, int pension_no);

	void pcEdit(int reservation_no, String payment_condition);

	Reservation info(int reservation_no);

}
