package spring.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import spring.bean.Company;
import spring.bean.Pension;
import spring.model.MemberDao;
import spring.model.PensionDao;

@Controller
public class PensionController {
	
	@Autowired
	private PensionDao pensionDao;
	
	@Autowired
	private MemberDao memberDao;

	@Autowired
	private ServletContext servletContext;
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	
	@RequestMapping("/")
	public String home(Model model) {
		List<Pension> list_latest = pensionDao.list_latest();
		model.addAttribute("list_latest", list_latest);
		String path = servletContext.getRealPath("/upload");
		log.debug(path);
		return "home";
	}
	
	@RequestMapping("/reserve")
	public String reserve(@RequestParam int pension_no, Model model) {
		Pension pension = pensionDao.info(pension_no);
		model.addAttribute("pension", pension);
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
	
	@RequestMapping(value="/pension_register", method=RequestMethod.POST)
	public String register(MultipartHttpServletRequest mRequest, HttpSession session) throws IllegalStateException, IOException {
		String id = (String)session.getAttribute("userId");
		Company company = memberDao.info2(id);
		log.debug("company.getCompany_no:{}",company.getCompany_no());
		int company_no = company.getCompany_no();
		Pension pension = new Pension(mRequest, company_no);
		int pension_no = pensionDao.insert(company_no, pension);
		
		String path = servletContext.getRealPath("/upload");
		
		MultipartFile photo1 = mRequest.getFile("photo1");
		MultipartFile photo2 = mRequest.getFile("photo2");
		MultipartFile photo3 = mRequest.getFile("photo3");
		MultipartFile photo4 = mRequest.getFile("photo4");
		MultipartFile photo5 = mRequest.getFile("photo5");
		
		pension = pensionDao.info(pension_no);
		log.debug(pension.toString());
		File target = new File(path, pension.getPhoto1());
		photo1.transferTo(target);
		target = new File(path, pension.getPhoto2());
		photo2.transferTo(target);
		target = new File(path, pension.getPhoto3());
		photo3.transferTo(target);
		target = new File(path, pension.getPhoto4());
		photo4.transferTo(target);
		target = new File(path, pension.getPhoto5());
		photo5.transferTo(target);
		log.debug("저장 완료");
		
		return "redirect:success";
	}
	
	@RequestMapping("/success")
	public String success() {
		return "pension/success";
	}
	
	@RequestMapping("/room_register")
	public String room_register() {
		return "pension/room_register";
	}
}
