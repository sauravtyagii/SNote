package com.DB;

import java.sql.*;

public class DBConnect {
	
	private static Connection conn;
	public static Connection getConn() {
		
		try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				String url = "jdbc:mysql://localhost:3306/snotes";
				String username = "root";
				String pass="Tgtgtg@123";
				conn= DriverManager.getConnection(url,username,pass);
			
			
		    }catch (Exception e){
			 e.printStackTrace();
		    }
		return conn;
	}

}
