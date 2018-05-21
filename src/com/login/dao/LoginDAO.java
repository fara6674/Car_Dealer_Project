package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
	
	String sql = "select * from login where uName=? and pass=?";
	String url = "jdbc:mysql://localhost:3306/login";
	

	
	String username = "root";
	String password = "476674";
	public boolean check(String uName, String pass) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uName);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return true;
			}
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
	return false;
	
	}

}
