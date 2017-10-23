package spring.model;

import org.springframework.stereotype.Repository;

import spring.bean.Member;

@Repository
public interface MemberDao {
	void insert(Member member);
	boolean login(String id, String pw);
	String findId(String type, String name, String email);
	Member info(String id);
}
