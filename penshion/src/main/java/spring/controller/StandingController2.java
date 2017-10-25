package spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.bean.questionboard;
import spring.model.questionboardDao;

@Controller
@RequestMapping("/standing")
public class StandingController2 {
	
	@Autowired
	private questionboardDao questionboardDao;
	
	@RequestMapping("/standing2")
	public String standing2() {
		return "standing/standing2";
	}
	
	@RequestMapping("/reservesystem")
	public String reservesystem() {
		return "standing/reservesystem";
	}
	@RequestMapping("/questionboard")
	public String questionboard() {
		return "standing/questionboard";
	}
//	@RequestMapping("/questionregister")
//	public String questionregister() {
//		return "standing/questionregister";
//	}
	@RequestMapping("/questionboardlist")
	public String questionboardlist(Model model) {
		List<questionboard> list = questionboardDao.list();
		model.addAttribute("list", list);
		return "standing/questionboardlist";
	}
}
