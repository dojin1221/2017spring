package com.hb.ex03.controller;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hb.ex03.model.GuestDao;
import com.hb.ex03.model.entity.GuestVo;
import com.hb.ex03.service.GuestService;

@Controller
public class AddController{
	
	@Autowired
	GuestService guestService;
	
	
	@RequestMapping(value="/guest/add",method=RequestMethod.GET)
	public void form() {
		
	}
	@RequestMapping(value="/guest/add",method=RequestMethod.POST)
	public String add(@ModelAttribute GuestVo bean) throws Exception {
		guestService.add(bean);
		return "redirect:/guest";
	}
	@RequestMapping(value="/guest/{sabun}/edit",method=RequestMethod.GET)
	public String edit(@PathVariable int sabun, Model model) throws Exception {
		model.addAttribute("bean",guestService.detail(sabun));
		return "guest/edit";
	}
	@RequestMapping(value="/guest/{sabun}/delete",method=RequestMethod.DELETE)
	public String delete(@PathVariable int sabun, Model model) throws Exception {
		model.addAttribute("bean",sabun);
		return "guest/edit";
	}
}
