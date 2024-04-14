<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_component/allcss.jsp"%>
<title>Registration page</title>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="continer-fluid div-colour">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Registration</h4>
					</div>
					<% 
					   String regmsg = (String)session.getAttribute("reg-sucess");
					if(regmsg!=null)
					{
					%>
					<div class="alert alert-success" role="alert">
						<%=regmsg %>Login
						<a href="login.jsp">click here</a>
					</div>
					<% 
					session.removeAttribute("reg-sucess");
					}
					%>

					<% 
					   String failmsg = (String)session.getAttribute("reg-fail");
					if(failmsg!=null)
					{
					%>
					<div class="alert alert-danger" role="alert">
						<%=failmsg %>
					</div>
					<% 
					session.removeAttribute("reg-fail");
					}
					%>


					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label>Enter full name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname">
							</div>
							<div class="form-group">
								<label>Enter email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="useremail">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="password">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>