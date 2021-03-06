package com.hb.day01.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.hb.day01.model.entity.GuestVo;


public class GuestDaoImpt implements GuestDao {
	DataSource dataSource;
	
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	@Override
	public List<GuestVo> selectAll() throws Exception {
		String sql="select * from guest03";
		List<GuestVo> list = new ArrayList<GuestVo>();
		
		
		try(Connection conn=dataSource.getConnection()){
			PreparedStatement pstmt =conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(new GuestVo(
						rs.getInt("sabun"),
						rs.getString("name"),
						rs.getTimestamp("nalja"),
						rs.getInt("pay")
						));
			}
		}
		
		return list;
	}

	@Override
	public void insertOne(int sabun, String name, int pay) throws Exception {
		String sql = "insert into guest03 values (?,?,now(),?)";
		try(Connection conn=dataSource.getConnection()){
			PreparedStatement pstmt =conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			pstmt.setString(2, name);
			pstmt.setInt(3, pay);
			pstmt.executeUpdate();
		}
	}


	@Override
	public GuestVo selectOne(int sabun) throws Exception {
		String sql="select * from guest03 where sabun=?";
		GuestVo bean = null;
		
		
		try(Connection conn=dataSource.getConnection()){
			PreparedStatement pstmt =conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				bean=new GuestVo(
						rs.getInt("sabun"),
						rs.getString("name"),
						rs.getTimestamp("nalja"),
						rs.getInt("pay")
						);
			}
		}
		
		return bean;
	}


	@Override
	public int updateOne(int sabun, String name, int pay) throws Exception {
		String sql = "update guest03 set name=?, pay=? where sabun=?";
		try(Connection conn=dataSource.getConnection()){
			PreparedStatement pstmt =conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, pay);
			pstmt.setInt(3, sabun);
			return pstmt.executeUpdate();
		}
	}

}
