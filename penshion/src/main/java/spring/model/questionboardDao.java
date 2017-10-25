package spring.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import spring.bean.questionboard;

@Repository
public interface questionboardDao {
//	void insert(String writer, String title, String detail, String pw);
	List<questionboard> list(int start, int end);
	void insert(questionboard q);
	int getBoardCount();
	int getBoardCount(String type, String key);
	List<questionboard> search(String type, String key, int start, int end);
}
