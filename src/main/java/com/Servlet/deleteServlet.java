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

@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Integer id=Integer.parseInt(request.getParameter("note_id"));
			postDao pd= new postDao(DBConnect.getConn());
			boolean f = pd.DeleteNote(id);
			HttpSession session=null;
			if(f)
			{
				session=request.getSession();
				session.setAttribute("update","note deleted");
				response.sendRedirect("showNotes.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
