package spring.model;

import org.springframework.stereotype.Repository;

import spring.bean.Company;
import spring.bean.Member;

@Repository
public interface MemberDao {
	void insert(Member member);
	boolean login(String id, String pw);
	String findId(String type, String name, String email);
	Member info(String id);
	void edit(Member member);
	void insert(Company company);
	boolean login_company(String id, String pw);
	boolean unregister(String id, String pw);
	Company info2(String id);

}
