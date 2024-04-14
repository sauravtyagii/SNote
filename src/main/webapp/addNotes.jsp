<%@page import="java.lang.ProcessBuilder.Redirect"%>
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
<title>Add notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<div class="container-fluid p-0">
		<%@include file="all_component/navbar.jsp"%>
		<h1 class="text-center">Add Your Notes</h1>
		<div class="container mt-5">
			<div class="row">
				<div class="col-md-12">

					<form action="addNotesServlet" method="post">
						<div class="form-group">

							<%
							UserDetails us = (UserDetails) session.getAttribute("userD");
							if (us != null) {
							%>
							<input type="hidden" value="<%=us.getId()%>" name="uid">
							<%
							}
							%>

							<label for="exampleInputEmail1">Add title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Add Notes</label>
							<textarea rows="9" cols="" class="form-control" name="content"
								required="required">
							</textarea>

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