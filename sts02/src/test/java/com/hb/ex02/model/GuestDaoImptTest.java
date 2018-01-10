package com.hb.ex02.model;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hb.ex02.model.entity.GuestVo;

public class GuestDaoImptTest {
	GuestDao guestDao;
	GuestVo testbean;
	@Before
	public void setUp() throws Exception {
		ApplicationContext cntxt=new ClassPathXmlApplicationContext("/root-context.xml");
		guestDao=(GuestDao)cntxt.getBean("guestDao");
		/*testbean=new GuestVo(9999,"test09",sysdate,9999);*/
	}

	@Test
	public void testSelectAll() throws Exception{
		assertNotNull(guestDao);
		assertTrue(guestDao.selectAll().size()>0);
		assertTrue(guestDao.selectAll() instanceof List);
	}

	@Test
	public void testInsertOne() throws Exception{
		int before=guestDao.selectAll().size();
		guestDao.insertOne(testbean);
		int after=guestDao.selectAll().size();
		assertTrue(before<after);
		assertEquals(before, after-1);
	}
	@Test
	public void testSelectOne(int sabun) throws Exception{
		GuestVo resultbean=guestDao.selectOne(testbean.getSabun());
		assertEquals(testbean, resultbean);
	}
	
	
}
