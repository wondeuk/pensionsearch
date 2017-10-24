package spring.model;

import org.springframework.stereotype.Repository;

import spring.bean.Pension;

@Repository
public interface PensionDao {
	void insert(Pension pension);

}