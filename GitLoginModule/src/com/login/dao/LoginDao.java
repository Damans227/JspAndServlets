package com.login.dao;

import java.sql.*;

public class LoginDao {
	
	String sql="select * from login where uname=? and pass=?";
	
	String url="jdbc:mysql://127.0.0.1:3306/employees_database";
	
	public boolean check(String uname, String pass) throws SQLException, ClassNotFoundException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection(url,"root","Education1");
		PreparedStatement st = conn.prepareStatement(sql);
		st.setString(1,uname);
		st.setString(2,pass);
		
		ResultSet rs=st.executeQuery();
		
		if(rs.next()) {
		
			return true;
		} else {
		return false;
		}
	}

}
