<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_component/allcss.jsp"%>
<meta charset="UTF-8">
<title>login page</title>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="continer-fluid div-colour">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Login</h4>
					</div>
					<%
					String msg = (String) session.getAttribute("login-failed");
					if (msg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=msg%></div>
					<%
					session.removeAttribute("login-failed");
					}
					%>
					<%
					String lgmsg = (String)session.getAttribute("logout-msg");
					if(lgmsg!=null)
					{
					%>
					<div class="alert alert-success" role="alert"> <%=lgmsg%></div>
					<%
					session.removeAttribute("logout-msg");
					}
					%>


					<div class="card-body">
						<form action="loginServlet" method="post">
							<div class="form-group">
								<label>Enter email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>

</body>
</html>