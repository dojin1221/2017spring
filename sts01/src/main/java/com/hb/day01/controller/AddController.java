package com.hb.day01.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AddController {
	
	@RequestMapping("/add.do")
	public String execute(HttpServletRequest req
			, HttpServletResponse res) throws Exception {
		return "add";
	}
}
