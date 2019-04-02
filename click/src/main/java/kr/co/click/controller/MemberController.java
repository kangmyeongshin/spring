package kr.co.click.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.click.service.MemberService;
import kr.co.click.vo.MemberVO;

@Controller
public class MemberController {

	@Inject
	private MemberService service;
	private Logger logger;
	
	@RequestMapping(value="/member/login", method=RequestMethod.GET)
	public String login(Model model, String page) {
		
		model.addAttribute("page", page);
		return "/member/login";
	}
	@RequestMapping(value="/member/login", method=RequestMethod.POST)
	public String login(HttpSession sess, MemberVO vo, String page) {
		MemberVO member = service.login(vo);

		if(member != null) {
			sess.setAttribute("member", member);
			//page == null 은 안되고 page.equals("")로 해야 되었다.
			if(page.equals("")) {
				return "redirect:/index";
			}else {
				return "redirect:/member/mypage";
			}
			
		}else {
			return "redirect:/member/login?result=fail";
		}
		
	}
	
	@RequestMapping("/member/logout")
	public String logout(HttpSession sess) {
		sess.invalidate();
		return "redirect:/index";
	}
	
	@RequestMapping(value="/member/join" ,method=RequestMethod.GET)
	public String join() {
		return "/member/join";
	}
	@RequestMapping(value="/member/join" ,method=RequestMethod.POST)
	public String join(MemberVO vo ,HttpServletRequest req) {
		vo.setRegip(req.getRemoteAddr());
		service.join(vo);
		return "/member/login";
	}
	
	@ResponseBody
	@RequestMapping(value="/member/idCheck", method=RequestMethod.GET)
	public int postIdCheck(HttpServletRequest req) throws Exception{

	 String uid = req.getParameter("uid");
	 MemberVO idCheck = service.idCheck(uid);
	 
	 int result =0;
	 
	 if(idCheck != null) {
		 result =1;
	 }
	 return result;
	}

	@RequestMapping("/member/faq")
	public String faq() {
		return "/member/faq";
	}
	
	@RequestMapping("/member/mypage")
	public String mypage(HttpSession sess) {
		
		MemberVO member = (MemberVO) sess.getAttribute("member");
		
		if(member != null) {
			
			//sess.setAttribute("member", member);
			return "/member/mypage";
			
		}else {
			return "redirect:/member/login?page=mypage";
		}
	}

}
	