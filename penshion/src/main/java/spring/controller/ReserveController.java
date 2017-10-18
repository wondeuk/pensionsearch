package spring.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReserveController {
	private Logger log = LoggerFactory.getLogger(getClass());

	@RequestMapping("/reserve")
	public String reserve(Model model) {
		Date today = new Date();
		SimpleDateFormat format01 = new SimpleDateFormat("MM/dd");
		SimpleDateFormat format02 = new SimpleDateFormat("EEE요일");
		int dayCount = 14;				//표시할 날짜 수
		String[] date = new String[dayCount];
		String[] m_week = new String[dayCount];
		
		for(int i = 0;i<dayCount;i++) {
			date[i] = format01.format(today.getTime()+((long)1000*60*60*24*i));
			m_week[i] = format02.format(today.getTime()+((long)1000*60*60*24*i));
		}
			log.debug("today : {}", today);
		model.addAttribute("day", date);
		model.addAttribute("m_week", m_week);
		model.addAttribute("dayCount", dayCount);
		
		return "reserve";
	}
}
