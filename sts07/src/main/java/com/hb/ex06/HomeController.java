package com.hb.ex06;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hb.ex06.model.GuestDao;
import com.hb.ex06.service.GuestService;


@Controller
public class HomeController {
	@Autowired
	SqlSession sqlSession;
	@Autowired
	GuestService guestService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	
	@RequestMapping("/guest/")
	public String list(Model model) throws Exception {
	//	guestService.list(sqlSession,model);
		model.addAttribute(sqlSession.getMapper(GuestDao.class).selectAll());
		return "list";
	}
}
