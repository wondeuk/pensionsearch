package spring.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.bean.questionboard;
import spring.model.questionboardDao;

@Controller
@RequestMapping("/standing")
public class questionboardController {

	@Autowired
	private questionboardDao questionboardDao;

	private Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private ServletContext servletContext;

	

	@RequestMapping(value="/questionboard", method=RequestMethod.POST)
	public String upload(HttpServletRequest request) throws IllegalStateException, IOException {
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String detail = request.getParameter("detail");
		String pw = request.getParameter("pw");
		
		questionboard q = new questionboard();
		q.setWriter(writer);
		q.setTitle(title);
		q.setDetail(detail);
		q.setPw(pw);
		
		questionboardDao.insert(q);
		
		
		System.out.println(writer+title+detail+pw);
		
		log.debug("저장 완료dㅏㅏㄴ");
		
		return "standing/questionregister";
	}
	
	
	
	
	
	
}