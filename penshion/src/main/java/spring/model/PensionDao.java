package spring.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import spring.bean.Pension;

@Repository
public interface PensionDao {
	void insert(Pension pension);
	List<Pension> list();
	Pension pensionInfo(int no);

}