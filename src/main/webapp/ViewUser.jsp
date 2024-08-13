
<%@page import="java.util.List"%>
<%@page import="com.org.dao.UserDao"%>
<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User</title>
<%@ include file="components/bootstrapCss.jsp" %>
<link rel="stylesheet" href="bg.css">
<style type="text/css">
	body {
		text-align: center;
	}

	h1 {
		color: green;
	}
</style>
</head>
<body>
	<%
	User user = (User) session.getAttribute("userObj");
	%>
	<%@ include file="components/navbar2.jsp"%>

	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">User Details</p>
						<a href="Add.jsp" class="text-decoration-none btn btn-primary">Add
							User</a>

						<%
						String msg = (String) session.getAttribute("success");
						if (msg != null) {
						%>

						<p class="text-center text-success fa-4 "><%=msg%></p>
						<%
						session.removeAttribute("success");
						%>

						<%
						}
						%>
						<table class="table">
							<thead>
								<tr>
									<th>Name</th>
									<th>Age</th>
									<th>Email</th>
									<th>Mobile</th>
									<th>Action</th>
								</tr>

							</thead>
							<tbody>
								<%
								UserDao dao = new UserDao();
								List<User> list = dao.fetchAllUser();
								%>

								<%
								for (User u : list) {

									if (user.getId() == u.getId()) {
										continue;
									}
								%>
								<tr>
									<td><%=u.getName()%></td>
									<td><%=u.getAge()%></td>
									<td><%=u.getEmail()%></td>
									<td><%=u.getMobile()%></td>
									<td><a href="Update.jsp?id=<%=u.getId()%>"
										class="btn btn-success text-decoration-none">UPDATE</a> 
									<a href="Delete.jsp?id=<%=u.getId()%>" class="btn btn-danger text-decoration-none">DELETE</a>
									</td>

								</tr>
								<%
								}
								%>
								
								
								<%  String str= (String)  session.getAttribute("delete"); 
						 if(str != null){
							 %>
							 
							 <p class="text-center text-danger fa-4 "><%= str %></p>
							 <% session.removeAttribute("delete"); %>
							 
						 <% }%>
						 
						 <%  String str1= (String)  session.getAttribute("update"); 
						 if(str1 != null){
							 %>
							 
							 <p class="text-center text-success fa-4 "><%= str1 %></p>
							 <% session.removeAttribute("update"); %>
							 
						 <% }%>
						 
						  <%  String msg1= (String)  session.getAttribute("added"); 
						 if(msg1 != null){
							 %>
							 
							 <p class="text-center text-success fa-4 "><%= msg1 %></p>
							 <% session.removeAttribute("added"); %>
							 
						 <% }%>
						 

							</tbody>
						</table>

					</div>
				</div>


			</div>

		</div>
		<a href="Home.jsp" class="btn btn-success text-decoration-none">Home-Page</a>


	</div>

</body>
</html>