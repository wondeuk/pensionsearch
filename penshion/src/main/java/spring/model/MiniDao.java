package spring.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import spring.bean.Question;

@Repository
public interface MiniDao {
	void insert(Question question);
	List<Question> list(int pension_no);

}
