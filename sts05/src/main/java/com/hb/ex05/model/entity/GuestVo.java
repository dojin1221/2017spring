package com.hb.ex05.model.entity;

import java.sql.Date;

public class GuestVo {
	private int sabun;
	private String name;
	private Date nalja;
	private int pay;
	
	public GuestVo() {
		// TODO Auto-generated constructor stub
	}

	public int getSabun() {
		return sabun;
	}

	public void setSabun(int sabun) {
		this.sabun = sabun;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getNalja() {
		return nalja;
	}

	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((nalja == null) ? 0 : nalja.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + pay;
		result = prime * result + sabun;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		GuestVo other = (GuestVo) obj;
		if (nalja == null) {
			if (other.nalja != null)
				return false;
		} else if (!nalja.equals(other.nalja))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (pay != other.pay)
			return false;
		if (sabun != other.sabun)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "GuestVo [sabun=" + sabun + ", name=" + name + ", nalja=" + nalja + ", pay=" + pay + "]";
	}
	
	
	
}