<%@page import="com.org.dao.UserDao"%>
<%@page import="java.util.List"%>
<%@ page import="com.org.dto.User" %>
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
 body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            animation: fadeIn 1s ease;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        h1 {
            text-align: center;
            color: blue; 
            font-weight: 800;
        }
        .profile {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 20px;
            background-color: #5f6fe9;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .profile img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            margin-bottom: 20px;
        }
        .profile h2 {
            margin-bottom: 10px;
            color: crimson; 
        }
        .profile .paragraphs {
            width: 80%;
            max-width: 400px;
            background-color: skyblue;
            border-radius: 15px;
            text-align: center;
        }
        .profile p {
            text-align: center;
            line-height: 1.6;
            color: #160202; 
        }
        .action {
        
        font-weight: 800;
        font-size: xx-large;
        }
        
</style>
</head>
<body>
<%@ include file="components/navbar2.jsp"%>

  <% User sessionUser=(User)session.getAttribute("userObj");

if(sessionUser == null){
	response.sendRedirect("login.jsp");
}else{

%>

<%-- <h1>hello,

<%= sessionUser.getName() %>
welcome to profile page
</h1> --%>

<% } %>
<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						
								<!-- <tr>
									<th>Name</th>
									<th>Age</th>
									<th>Email</th>
									<th>Mobile</th>
									<th>Action</th>
								</tr> -->
								<%
								UserDao dao=new UserDao();
							
								List<User> list=dao.fetchAllUser();
								
								for(User u : list){
									if(sessionUser.getId()!=u.getId()){
										continue;
										
									}
								
								
								%>
								<%-- <tr>
								<td><%=u.getName() %></td>
								<td><%=u.getAge() %></td>
								<td><%=u.getEmail() %></td>
								<td><%=u.getMobile() %></td>
									<td> <a href="Update.jsp?id=<%= u.getId() %>" class="btn btn-success text-decoration-none">UPDATE</a>
									     <a href="#" class="btn btn-danger text-decoration-none">DELETE</a></td>
								
								
								
								</tr> --%>
		                	<div class="container">
                                 <h1>User Profile</h1>
                               <div class="profile">
                               <img src="profilei.jpg" alt="Profile Picture">
                               <h2><%=u.getName() %></h2>
                               <div class="actions">
                              <p>Age: <%=u.getAge() %></p>
                              <p>Email: <%=u.getEmail() %></p>
                              <p> Mobile:<%=u.getMobile() %></p>
                              </div>
                              <p>
                              <a href="Update.jsp?id=<%= u.getId() %>" class="btn btn-success text-decoration-none">UPDATE</a> 
							 <a href="Delete.jsp?id=<%=u.getId()%>" class="btn btn-danger text-decoration-none">DELETE</a>
                               </p>
                             </div>
                      </div>
					<% } %>
			</div>
				</div>
			</div>
		</div>
	</div>
	<a href="Home.jsp" class="btn btn-success text-decoration-none">Home-Page</a>
</body>
</html>