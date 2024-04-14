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
<%@include file="all_component/allcss.jsp"%>
<meta charset="UTF-8">
<title>home</title>
</head>
<body>

<div class="container-fluid p-0">
<%@include file="all_component/navbar.jsp"%>
<div class="card py-5">
<div class="card-body text-center">
<img alt="" src="img/open-notebook-stack-textbooks-glasses-set-pencils.jpg"
class="img-fluid mx-auto" style="max-width: 500px;">
<h1>START TAKING YOUR NOTES</h1>
<a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
</div>
</div>
</div>
<%@include file="all_component/footer.jsp"%>
</body>
</html>