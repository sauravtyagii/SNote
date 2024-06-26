package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.postDao;
import com.DB.DBConnect;


@WebServlet("/addNotesServlet")
public class addNotesServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int uid = Integer.parseInt(request.getParameter("uid"));
		String title =request.getParameter("title");
		String content= request.getParameter("content");
		postDao pd= new postDao(DBConnect.getConn());
		boolean f= pd.AddNotes(title, content, uid);
		if(f) {
			System.out.println("insert succesfull...");
			response.sendRedirect("showNotes.jsp");
		}
		else {
			System.out.println("insert not succesfull...");
		}
	}

}
