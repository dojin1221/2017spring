package com.hb.day01.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hb.day01.model.entity.GuestVo;


public class GuestDaoImpt implements GuestDao {

	@Override
	public List<GuestVo> selectAll() throws Exception {
		String sql="select * from guest03";
		List<GuestVo> list = new ArrayList<GuestVo>();
		
		String driver="org.gjt.mm.mysql.Driver";
		String url="jdbc:mysql://localhost:3306/xe?useUnicode=true&characterEncoding=utf8";
		String id="scott";
		String pw="tiger";
		Class.forName(driver);
		
		try(Connection conn=DriverManager.getConnection(url,id,pw)){
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

}
