package spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	
	
	//게시판 상수
	private final int boardsize = 10;//게시판 1p에 표시할 글 개수
	private final int blocksize = 10;//게시판 1p에 표시할 링크 개수
	
	@RequestMapping("/questionboardlist")
	public String questionboardlist(HttpServletRequest request, Model model) {
		String type = request.getParameter("type");
		String key = request.getParameter("key");
		boolean searchFlag = type != null && key != null;
		
		String pageStr = request.getParameter("page");
		int pageNo;
		try{
			pageNo = Integer.parseInt(pageStr);
			if(pageNo <= 0) throw new Exception();
		}catch(Exception e){
			pageNo = 1;
		}
		
		int count;
		if(searchFlag){
			count = questionboardDao.getBoardCount(type, key);
		}else{
			count = questionboardDao.getBoardCount();
		} 
		
		
		int start = pageNo * boardsize - boardsize + 1;
		int end = start + boardsize - 1;
		
		int blocktotal = (count - 1) / boardsize + 1;
		int blockstart = (pageNo - 1) / blocksize * blocksize + 1;
		int blockend = blockstart + blocksize - 1;
		if(blockend > blocktotal) blockend = blocktotal;
		
		List<questionboard> list;
		if(searchFlag){
			list = questionboardDao.search(type, key, start, end); 
		}else{
			list = questionboardDao.list(start, end);
		}
		
		String searchParam;
		if(searchFlag) searchParam = "&type="+type+"&key="+key;
		else searchParam = "";

		//전달할 데이터 첨부
		model.addAttribute("searchFlag", searchFlag);
		model.addAttribute("pageStr", pageStr);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("start", start);
		model.addAttribute("end", end);
		model.addAttribute("count", count);
		model.addAttribute("blocktotal", blocktotal);
		model.addAttribute("blockstart", blockstart);
		model.addAttribute("blockend", blockend);
		model.addAttribute("list", list);
		model.addAttribute("searchParam", searchParam);
		
		return "standing/questionboardlist";
	}
}
