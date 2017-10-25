package spring.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import spring.bean.questionboard;

@Repository
public interface questionboardDao {
//	void insert(String writer, String title, String detail, String pw);
	List<questionboard> list();
	void insert(questionboard q);
	
}
