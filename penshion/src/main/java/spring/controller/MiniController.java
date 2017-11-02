package spring.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.bean.Answer;
import spring.bean.Question;
import spring.model.MiniDao;

@Controller
@RequestMapping("/mini")
public class MiniController {
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private MiniDao miniDao;
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	
	@RequestMapping("/ask")
	public String miniask(@RequestParam int pension_no, @RequestParam int no, HttpSession session) {
		session.setAttribute("no", pension_no);
		String mck = (String) session.getAttribute("loginFlag");
		String cck = (String) session.getAttribute("companyFlag");
		log.debug(mck);
		log.debug(cck);
		if(mck.equals("true") && no == 0) {
			return "pension/miniask";
		}else if(cck != null && no>0) {
			
			return "pension/miniask";
		}else if(mck.equals("true") && no>0){
			return "redirect:/member/logout";
			
		}
		//log.debug("접속 완료");
//		if(no>0) session.setAttribute("companyFlag", "true");
		return "redirect:/member/login";
	}
	
	@RequestMapping(value ="/ask", method=RequestMethod.POST)
	public String QandA(@RequestParam int pension_no, HttpServletRequest request, HttpSession session) {
		String id = (String)session.getAttribute("userId");
		//회원 질문 처리
			Question question = new Question(request, id);
			log.debug(question.toString());
			miniDao.insert(question);

		return "redirect:/pension/reserve?pension_no="+pension_no;
		
	}
	

}
