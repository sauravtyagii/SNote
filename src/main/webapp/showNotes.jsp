<%@page import="com.User.post"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.postDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UserDetails us3 = (UserDetails) session.getAttribute("userD");
if (us3 == null) {
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_component/allcss.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<%
	String updateMsg = (String)session.getAttribute("update");
	
	if(updateMsg !=null)
	{
	%>
		<div class="alert alert-success text-center" role="alert"> <%=updateMsg%></div>
		<%
		session.removeAttribute("update");
		}
		%>

	<div class="container">
		<h2 class="text-center">All Notes:</h2>
		<div class="row">
			<div class="col-md-12">
				<%
				if (us3 != null) {
					postDao ob = new postDao(DBConnect.getConn());
					List<post> pt = ob.getData(us3.getId());
					for (post po : pt) {
				%>

				<div class="card mt-3">
					<img alt="" src="img/imgs.jpg" class="card-img-top mt-2 mx-auto"
						style="max-width: 150px;">
					<div class="card-body p-4">
						<h5 class="card-title"><%=po.getTitle() %></h5>
						<p><%=po.getContent()%>.</p>
						<p>
							<b class="text-success">published By:<%=us3.getName() %></b></br> <b
								class="text-primary"></b>
						</p>
						<p>
							<b class="text-success">published Date:<%=po.getPdate() %></b></br> <b
								class="text-success"></b>
						</p>


						<div class="container text-center mt-2">
							<a href="deleteServlet?note_id=<%=po.getId()%>" class="btn btn-danger">Delete</a> 
							<a href="edit.jsp?note_id=<%=po.getId() %>" class="btn btn-primary">Edit</a>
						</div>
					</div>
				</div>

				<%
				}

				}
				%>
			</div>
		</div>
	</div>
</body>
</html>