package spring.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import spring.bean.Pension;

@Repository
public interface PensionDao {

	void insert(Pension pension);
	List<Pension> list();
	Pension pensionInfo(int no);

	int insert(int company_no, Pension pension);
	Pension info(int pension_no);
	List<Pension> list_latest();

	void plusRead(int pension_no);
	List<Pension> myPension(int company_no);
}