package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.userDAO;
import com.DB.DBConnect;
import com.User.UserDetails;

@WebServlet("/UserServlet")
public class userServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name= req.getParameter("fname");
		String email= req.getParameter("useremail");
		String password= req.getParameter("password");
		
		UserDetails us = new UserDetails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		userDAO dao =new userDAO(DBConnect.getConn());
		boolean f = dao.addUser(us);
		
		HttpSession session;
		if(f) 
		{
			session = req.getSession();
			session.setAttribute("reg-sucess","register sucessfully...");
			resp.sendRedirect("register.jsp");
		}
		else{ 
			session = req.getSession();
			session.setAttribute("reg-fail","registration failed..");
			resp.sendRedirect("register.jsp");
			}
			
		}
		
	}
	

