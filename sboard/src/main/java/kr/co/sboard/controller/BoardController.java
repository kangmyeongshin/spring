package kr.co.sboard.controller;


import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.sboard.service.BoardService;
import kr.co.sboard.vo.BoardVO;
import kr.co.sboard.vo.FileVO;
import kr.co.sboard.vo.MemberVO;

@Controller
public class BoardController {
		private static final BoardVO BoardVO = null;
		@Autowired
		private BoardService service;
		
	
		
	@RequestMapping("/list")
public String list(Model model, String pg) {
		
		// Limit용 start 계산
		int start = service.getLimitStart(pg);
		
		// 페이지번호 계산
		int total   = service.getTotalCount();
		int pageEnd = service.getPageEnd(total);
		
		// 글 카운터번호 계산
		int count = service.getPageCountStart(total, start);
		
		// 페이지 그룹 계산
		int[] groupStartEnd = service.getPageGroupStartEnd(pg, pageEnd);
		
		
		List<BoardVO> list = service.list(start);
		
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("pageEnd", pageEnd);
		model.addAttribute("groupStartEnd", groupStartEnd);
		
		return "/list";
	}
	
	
	@RequestMapping("/view")
	public String view(String seq,Model model) {
		BoardVO vo = service.view(seq);
		model.addAttribute("view",vo);
		
		FileVO file = service.fileView(seq);
		model.addAttribute("fileView",file);
		return "/view";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String write() {
		return "/write";
	}
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String write(BoardVO vo,HttpServletRequest req,HttpSession sess) {
		
		MemberVO member = (MemberVO) sess.getAttribute("member");
		
		vo.setCate("notice");
		vo.setRegip(req.getRemoteAddr());
		vo.setUid(member.getUid());
		
		MultipartFile file = vo.getFname();
		if(file.isEmpty()) {
			vo.setFile(0);
		}else {
			vo.setFile(1);
		}

 		int parent = service.write(vo);
		FileVO fvo = service.fileUpload(req, file, parent);

 		if(fvo != null) {
			service.fileWrite(fvo);	
		}
		
		return  "redirect:/list";
	}
	@RequestMapping("/fileDownload")
	public void fileDownload(int parent, HttpServletRequest req, HttpServletResponse resp) {
		//파일테이블에서 파일정보가져오기
		FileVO vo = service.fileDownload(parent);
		
		String filePath = req.getSession().getServletContext().getRealPath("/");
		filePath +="resources/upload/"+vo.getNewName();
		try {
			File file = new File(filePath);
			
			String name = new String(vo.getOldName().getBytes("UTF-8"), "iso-8859-1");
			resp.setHeader("Cache-Control", "no-cache");
			resp.setHeader("Content-Disposition", "attachment; filename="+name);
			resp.setHeader("Content-Transfer-Encoding", "binary");
			resp.setHeader("Pragma", "no-cache");
			
			// 스트림 연결 : 파일 ---- response객체 
			BufferedInputStream  bis = new BufferedInputStream(new FileInputStream(file));
			BufferedOutputStream bos = new BufferedOutputStream(resp.getOutputStream()); 
			
			
			byte buffer[] = new byte[1024*8];
			
			while(true){
				// Input스트림으로 데이터 읽어오기	
				int read = bis.read(buffer);
				if(read == -1){
					break;
				}
				
				// Output 스트림으로 데이터 쓰기
				bos.write(buffer, 0, read);
			}
			
			bis.close();
			bos.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		}
		


	@RequestMapping("/delete")
	public String delete(String seq) {
		service.delete(seq);
		return "redirect:/list";
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public String modify(Model model, String seq) {
		
		BoardVO vo = service.view(seq);
		model.addAttribute(vo);
		
		return "/modify";
		
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modify(BoardVO vo,HttpServletRequest req,HttpSession sess) {
		
		MemberVO member = (MemberVO) sess.getAttribute("member");
		
		vo.setCate("notice");
		vo.setRegip(req.getRemoteAddr());
		vo.setUid(member.getUid());
		
		MultipartFile file = vo.getFname();
		if(file.isEmpty()) {
			vo.setFile(0);
		}else {
			vo.setFile(1);
		}

 		int parent = service.modify(vo);
		FileVO fvo = service.fileUpload(req, file, parent);

 		if(fvo != null) {
			service.fileWrite(fvo);	
		}
		
		return  "redirect:/list";
	}
}

