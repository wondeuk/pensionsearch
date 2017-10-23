package spring.controller;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.AbstractDocument.Content;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import spring.model.questionboardDao;

@Controller
public class questionboardController {
	
	@Autowired
	private questionboardDao imageBoardDao;
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private ServletContext servletContext;
	
	@RequestMapping("/upload")
	public String upload() {
		return "upload";
	}
	
	@RequestMapping(value="/upload", method=RequestMethod.POST)
	public String upload(MultipartHttpServletRequest mRequest) throws IllegalStateException, IOException {
		String title = mRequest.getParameter("title");
		MultipartFile mf = mRequest.getFile("file");
		String filename = mf.getOriginalFilename();
		String filetype = mf.getContentType();
		long filelen = mf.getSize();
		
		//String savename = ip + 시간 + UUID;
		String ip = mRequest.getRemoteAddr();
		long time = System.currentTimeMillis();
		UUID uuid = UUID.randomUUID();
		//log.debug("ip = {}, time = {}, uuid = {}", ip, time, uuid.toString());
		String savename = ip+"_"+time+"_"+uuid.toString();
		log.debug("savename = {}", savename);
		
		Content content = new Content();
		content.setTitle(title);
		content.setSavename(savename);
		content.setFilename(filename);
		content.setFiletype(filetype);
		content.setFilelen(filelen);
		
		imageBoardDao.insert(content);
		
		//String path = request.getServletContext().getRealPath("/upload")
		String path = servletContext.getRealPath("/upload");
		File target = new File(path, savename);
		mf.transferTo(target);
		log.debug("저장 완료");
		
		return "redirect:/";
	}
	
	@RequestMapping("/list")
	public String list(Model model) {
		List<Content> list = imageBoardDao.list();
		model.addAttribute("list", list);
		return "list";
	}
	
	//path variable의 경우는 .이 포함되면 경로가 끊겨서 인식된다
	//표현식을 추가하여 받도록 설정
	@RequestMapping("/download/{filename:.+}")
	public void download(@PathVariable String filename,
										HttpServletResponse response) throws IOException{
		log.debug("filename = {}", filename);
		
		//전송해줄 때 사용할 이름
		Content content = imageBoardDao.get(filename);
		String sendFilename = content.getFilename();
		
		//파일 읽기
		String realPath = servletContext.getRealPath("/upload");
		File target = new File(realPath, filename);
		
		//apache common-io의 기능을 이용하여 파일을 한줄로 byte[] 읽기
		byte[] data = FileUtils.readFileToByteArray(target);
		
		//전송 설정 - 파일 전송용으로 response를 다시 설정
		response.setContentType("application/octet-stream");
		response.setContentLength(data.length);
		response.setHeader("Content-Disposition", 
											"attachment; fileName=\""+sendFilename+"\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		//파일 전송
		OutputStream out = response.getOutputStream();
		out.write(data);
		out.close();
	}
}






