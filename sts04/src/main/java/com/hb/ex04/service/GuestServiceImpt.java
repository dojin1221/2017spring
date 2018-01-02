package com.hb.ex04.service;

import java.util.List;

import com.hb.ex04.model.GuestDao;
import com.hb.ex04.model.entity.GuestVo;

public class GuestServiceImpt implements GuestService {

	GuestDao guestDao;
	
	
	public void setGuestDao(GuestDao guestDao) {
		this.guestDao = guestDao;
	}
	
	@Override
	public List<GuestVo> selectAll() throws Exception {
		
		return guestDao.selectAll();
	}

	@Override
	public void insertOne(GuestVo bean) throws Exception {
		guestDao.insertOne(bean);
		
	}

	@Override
	public GuestVo selectOne(int sabun) throws Exception {
		
		return guestDao.selectOne(sabun);
	}

}
