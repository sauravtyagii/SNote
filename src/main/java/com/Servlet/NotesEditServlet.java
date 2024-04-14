package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.postDao;
import com.DB.DBConnect;

@WebServlet("/NotesEditServlet")
public class NotesEditServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Integer note_id =Integer.parseInt(request.getParameter("nid"));
			String title =request.getParameter("title");
			String content=request.getParameter("content");
			
			postDao ps =new postDao(DBConnect.getConn());
			boolean f = ps.PostUpdate(note_id, title, content);
			
			if(f)
			{
				System.out.println("data update succesfully");
				HttpSession session = request.getSession();
				session.setAttribute("update","Notes update sucessfully");
				response.sendRedirect("showNotes.jsp");
			}
			else
			{
				System.out.println("data doesn't update ");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
