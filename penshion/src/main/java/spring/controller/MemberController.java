package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.bean.User;

@Controller
@RequestMapping("/member")
public class MemberController {

	@RequestMapping("/user_register01")
	public String user_register01() {
		return "member/user_register01";
		
	}
	
	@RequestMapping("/user_register02")
	public String user_register02() {
		return "member/user_register02";
	}
	
	@RequestMapping(value="/user_register02", method=RequestMethod.POST)
	public String user_register02(User user) {
		return "redirect:user_register03";
	}
	
	@RequestMapping("/user_register03")
	public String user_register03() {
		return "member/user_register03";
	}
	
	@RequestMapping("/login")
	public String user_login() {
		return "member/user_login";
	}
	
	@RequestMapping("/myinfo")
	public String myinfo() {
		return "member/myinfo";
	}
	
}