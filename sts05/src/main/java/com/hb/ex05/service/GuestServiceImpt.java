package com.hb.ex05.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.hb.ex05.model.GuestDao;
import com.hb.ex05.model.entity.GuestVo;


@Component
public class GuestServiceImpt implements GuestService {
	
	@Autowired
	GuestDao guestDao;
	
	@Override
	public void listAll(Model model) {
		model.addAttribute("list",guestDao.selectAll());
	}

	@Override
	public void addOne(GuestVo bean) {
		guestDao.insertOne(bean);
		
	}

	@Override
	public void detailOne(int sabun,Model model) {
		//db 
		model.addAttribute("bean", guestDao.selectOne(sabun));
		model.addAttribute("title", "상세");
		model.addAttribute("readonly", "readonly");
	}

	@Override
	public void editOne(int sabun,Model model) {
	
		model.addAttribute("bean", guestDao.selectOne(sabun));
		model.addAttribute("title" , "수정");
		model.addAttribute("readonly", null);
	}

	@Override
	public void updateOne(GuestVo bean) {
		guestDao.updateOne(bean);
		
	}

	@Override
	public void deleteOne(int sabun) {
		guestDao.deleteOne(sabun);
		
	}

}
