package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PensionController {
	
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
		System.out.println("??");
		return "pension/pension_register";
	}
	
	@RequestMapping("/room_register")
	public String room_register() {
		return "pension/room_register";
	}
}
