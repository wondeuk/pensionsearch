package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/standing")
public class StandingController2 {
	
	@RequestMapping("/standing2")
	public String standing2() {
		return "standing/standing2";
	}
	
	@RequestMapping("/reservesystem")
	public String reservesystem() {
		return "standing/reservesystem";
	}
}
