package com.hb.model;

public class GuestDaoImpt implements GuestDao {

	@Override
	public void listDao() {
			System.out.println("list");
	}

	@Override
	public void addDao() {
			System.out.println("add");
	}

	@Override
	public void editDao() {
			System.out.println("edit");
	}

}
