package spring.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.bean.Member;
import spring.bean.State2;
import spring.model.MemberDao;
import spring.model.ReserveDao;

@Controller
@RequestMapping("/reservation")
public class ReserveController {

	@Autowired
	MemberDao memberDao;
	
	@Autowired
	ReserveDao reserveDao;
	
	private Logger log = LoggerFactory.getLogger(getClass());

	@RequestMapping("/reserving")
	public String reserving(HttpSession session, HttpServletRequest request, Model model) {
		String[] ids = request.getParameterValues("id");
		Map<String, List<State2>> state_map = new HashMap<String, List<State2>>();
		for(int i = 0; i<ids.length;i++) {
			State2 state = new State2();
			state.setState_id(ids[i]);
			state.setRoom_name(request.getParameter(ids[i]+"room_name"));
			state.setDate(request.getParameter(ids[i]+"date"));
			String guest = request.getParameter(ids[i]+"guest");
			state.setGuest(guest == null?0:Integer.parseInt(guest));
			String max_guest = request.getParameter(ids[i]+"max_guest");
			state.setMax_guest(max_guest == null?0:Integer.parseInt(max_guest));
			String price = request.getParameter(ids[i]+"price");
			state.setPrice(price == null?0:Integer.parseInt(price));
			String add_adult = request.getParameter(ids[i]+"add_adult");
			state.setAdd_adult(add_adult == null?0:Integer.parseInt(add_adult));
			String add_child = request.getParameter(ids[i]+"add_child");
			state.setAdd_child(add_child == null?0:Integer.parseInt(add_child));
			String add_baby = request.getParameter(ids[i]+"add_baby");
			state.setAdd_baby(add_baby == null?0:Integer.parseInt(add_baby));
			String adult = request.getParameter(ids[i]+"adult");
			state.setAdult(adult == null?0:Integer.parseInt(adult));
			String child = request.getParameter(ids[i]+"child");
			state.setChild(child == null?0:Integer.parseInt(child));
			String baby = request.getParameter(ids[i]+"baby");
			state.setBaby(baby == null?0:Integer.parseInt(baby));
			String tot = request.getParameter(ids[i]+"tot");
			state.setTot(tot == null?0:Integer.parseInt(tot));
			List<State2> state_list = new ArrayList<State2>();
			state_list.add(state);
			state_map .put(ids[i], state_list);
		}
		int total = Integer.parseInt(request.getParameter("total"));
		
		String id = (String)session.getAttribute("userId");
		Member member = memberDao.info(id);
		model.addAttribute("member", member);
		model.addAttribute("total", total);
		model.addAttribute("state_map", state_map);
		return "reservation/reserving";
	}
	
	@RequestMapping("reserving02")
	public String reserving02(HttpServletRequest request, HttpSession session) {
		String payment_method = request.getParameter("payment_method");
		
		String[] ids = request.getParameterValues("id");
		Map<String, List<State2>> state_map = new HashMap<String, List<State2>>();
		for(int i = 0; i<ids.length;i++) {
			State2 state = new State2();
			state.setState_id(ids[i]);
			state.setRoom_name(request.getParameter(ids[i]+"room_name"));
			state.setDate(request.getParameter(ids[i]+"date"));
			String guest = request.getParameter(ids[i]+"guest");
			state.setGuest(guest == null?0:Integer.parseInt(guest));
			String max_guest = request.getParameter(ids[i]+"max_guest");
			state.setMax_guest(max_guest == null?0:Integer.parseInt(max_guest));
			String price = request.getParameter(ids[i]+"price");
			state.setPrice(price == null?0:Integer.parseInt(price));
			String add_adult = request.getParameter(ids[i]+"add_adult");
			state.setAdd_adult(add_adult == null?0:Integer.parseInt(add_adult));
			String add_child = request.getParameter(ids[i]+"add_child");
			state.setAdd_child(add_child == null?0:Integer.parseInt(add_child));
			String add_baby = request.getParameter(ids[i]+"add_baby");
			state.setAdd_baby(add_baby == null?0:Integer.parseInt(add_baby));
			String adult = request.getParameter(ids[i]+"adult");
			state.setAdult(adult == null?0:Integer.parseInt(adult));
			String child = request.getParameter(ids[i]+"child");
			state.setChild(child == null?0:Integer.parseInt(child));
			String baby = request.getParameter(ids[i]+"baby");
			state.setBaby(baby == null?0:Integer.parseInt(baby));
			String tot = request.getParameter(ids[i]+"tot");
			state.setTot(tot == null?0:Integer.parseInt(tot));
			List<State2> state_list = new ArrayList<State2>();
			state_list.add(state);
			state_map .put(ids[i], state_list);
		}
		
		
		int total = Integer.parseInt(request.getParameter("total"));
		
		String id = (String)session.getAttribute("userId");
		
		if(payment_method.equals("account")) {
			reserveDao.reserveation_insert(state_map, id, payment_method);
			log.debug("무통장입금");
		}else {
			log.debug("카드결제");
		}
		return null;
	}
	
	
	
	
}
