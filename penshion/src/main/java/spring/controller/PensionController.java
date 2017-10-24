package spring.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import spring.bean.Pension;
import spring.model.PensionDao;

@Controller
public class PensionController {
	
	@Autowired
	private PensionDao pensionDao;

	private Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private ServletContext servletContext;
	
	@RequestMapping("/reserve")
	public String reserve() {
		return "pension/reserve";
	}
	
	@RequestMapping("/reservation")
	public String reservation() {
		return "pension/reservation";
	}
	
	@RequestMapping("/pension_register")
	public String pension_register() {
		
		return "pension/pension_register";
	}
	
	@RequestMapping(value="/pension_register02", method=RequestMethod.POST)
	public String register(HttpServletRequest request, MultipartHttpServletRequest mRequest) {
		Pension pension = new Pension(request, mRequest);
		
		pensionDao.insert(pension);
		
		
		return "pension/pension_register";
	}
	
	@RequestMapping("/room_register")
	public String room_register() {
		return "pension/room_register";
	}
}
