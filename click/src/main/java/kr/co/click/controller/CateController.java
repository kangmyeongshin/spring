package kr.co.click.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
class CateController {
	@RequestMapping("/cate/new")
	public String newc() {
		return "/cate/new";
	}
	@RequestMapping("/cate/outer")
	public String outer() {
		return "/cate/outer";
	}

}
