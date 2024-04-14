<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.postDao"%>
<%@page import="com.User.post"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
UserDetails us1 = (UserDetails) session.getAttribute("userD");
if (us1 == null) {
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edits notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
<%
int noteid = Integer.parseInt(request.getParameter("note_id"));
postDao pd= new postDao(DBConnect.getConn());
post p=pd.getDataById(noteid);

%>
<div class="container-fluid p-0">
		<%@include file="all_component/navbar.jsp"%>
		<h1 class="text-center">Edit your Notes</h1>
		<div class="container mt-5">
			<div class="row">
				<div class="col-md-12">

					<form action="NotesEditServlet" method="post">
					<input type="hidden"value="<%= noteid%>" name="nid">
						<div class="form-group">
							<label for="exampleInputEmail1">Add title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required" value="<%=p.getTitle()%>">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Add Notes</label>
							<textarea rows="9" cols="" class="form-control" name="content"
								required="required"><%=p.getContent()%></textarea>

						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</form>

				</div>
			</div>

		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>