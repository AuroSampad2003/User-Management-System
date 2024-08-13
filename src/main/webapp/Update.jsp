<%@page import="com.org.dto.User"%>
<%@page import="com.org.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="components/bootstrapCss.jsp" %>
<link rel="stylesheet" href="bg.css">
<style type="text/css">
h1 {
    font-size: 36px;
    color: #007bff;
  }
</style>

</head>
<body>
<%@ include file="components/navbar2.jsp"%>

<%  String strId= request.getParameter("id"); 
						
	int id = Integer.parseInt(strId);
 						
    UserDao dao= new UserDao();
    User user =dao.fetchUserById(id); %>

<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body"> 
					
					<p class="fs-4 text-center">update Page</p>
						
							 
							 <form action="update" method="post">
							<div class="mb-3">
								<label class="form-label">Name</label>
								<input name="name"	type="text" class="form-control" value="<%= user.getName() %>"   required>
							</div>
							<div class="mb-3">
								<label class="form-label">Age</label> 
								<input name="age" type="tel" class="form-control" required  value="<%= user.getAge()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Mobile</label> 
								<input name="mobile"	type="tel" class="form-control" required value="<%= user.getMobile() %>">
							</div>
							<div class="mb-3">
								<label class="form-label">Email Address</label> 
								<input name="email" type="email" class="form-control" required  value="<%= user.getEmail() %>">
							</div>
							<div class="mb-3">
								 <input name="id" type="hidden" class="form-control" required value="<%= user.getId() %>">
							</div>
					
							<button type="submit" class="btn bg-success text-white col-md-12">Update</button>
							
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>



 
</body>
</html>