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
}
