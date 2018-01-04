package com.hb.ex06.model;

import java.util.List;

import com.hb.ex06.model.entity.GuestVo;

public interface GuestDao {
	List<GuestVo> selectAll() throws Exception;
}
