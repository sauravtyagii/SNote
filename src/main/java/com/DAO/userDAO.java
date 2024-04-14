package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.User.UserDetails;

public class userDAO {
	
	private Connection conn;

	public userDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addUser(UserDetails us) {
		
		boolean f=false;
		
		try {
			String q = "insert into user(name,email,passward) values(?,?,?)";
			
			PreparedStatement ps= conn.prepareStatement(q);
			ps.setString(1,us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPassword());
			int i =ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
		
		
	}
	public UserDetails loginUser(UserDetails us) {
		UserDetails user=null;
		try {
			
			String q = "select * from user where email=? and passward=?";
			
			PreparedStatement ps = conn.prepareStatement(q);
			ps.setString(1,us.getEmail());
			ps.setString(2,us.getPassword());
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				user= new UserDetails();
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("passward"));
				user.setId(rs.getInt("id"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
	

}
