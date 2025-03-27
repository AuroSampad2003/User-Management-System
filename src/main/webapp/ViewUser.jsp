<%@page import="java.util.List"%>
<%@page import="com.org.dao.UserDao"%>
<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>View User</title>
<%@ include file="components/bootstrapCss.jsp" %>
<link rel="stylesheet" href="bg.css">
<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f7f7f7;
    }

    h1, .fs-3 {
        color: #333;
        font-size: 1.8rem;
        text-align: center;
        margin-bottom: 20px;
    }

    .container-fluid {
        padding: 20px;
    }

    .card {
        margin-top: 20px;
        border: 1px solid #ddd;
        border-radius: 5px;
        padding: 20px;
        background-color: white;
    }

    .table {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
    }

    .table th, .table td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: left;
    }

    .table th {
        background-color: #f4f4f4;
        font-weight: bold;
    }

    .btn {
        padding: 8px 12px;
        margin: 5px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .btn-primary {
        background-color: #007bff;
        color: white;
    }

    .btn-success {
        background-color: #28a745;
        color: white;
    }

    .btn-danger {
        background-color: #dc3545;
        color: white;
    }

    .btn:hover {
        opacity: 0.8;
    }

    .notification {
        font-size: 1rem;
        text-align: center;
        margin-top: 20px;
    }

    .notification.success {
        color: #28a745;
    }

    .notification.error {
        color: #dc3545;
    }
</style>
</head>
<body>

<%@ include file="components/navbar2.jsp"%>

<%
User user = (User) session.getAttribute("userObj");
%>

<div class="container-fluid">
    <h1>User Details</h1>

    <a href="Add.jsp" class="btn btn-primary">Add User</a>

    <%
    String msg = (String) session.getAttribute("success");
    if (msg != null) {
    %>
    <p class="notification success"><%=msg%></p>
    <%
    session.removeAttribute("success");
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
                <td>
                    <a href="Update.jsp?id=<%=u.getId()%>" class="btn btn-success">UPDATE</a>
                    <a href="Delete.jsp?id=<%=u.getId()%>" class="btn btn-danger">DELETE</a>
                </td>
            </tr>
            <%
            }
            %>

            <%  String str= (String)  session.getAttribute("delete"); 
            if(str != null){
            %>
            <p class="notification error"><%= str %></p>
            <% session.removeAttribute("delete"); %>
            <% }%>

            <%  String str1= (String)  session.getAttribute("update"); 
            if(str1 != null){
            %>
            <p class="notification success"><%= str1 %></p>
            <% session.removeAttribute("update"); %>
            <% }%>

            <%  String msg1= (String)  session.getAttribute("added"); 
            if(msg1 != null){
            %>
            <p class="notification success"><%= msg1 %></p>
            <% session.removeAttribute("added"); %>
            <% }%>

        </tbody>
    </table>

    <a href="Home.jsp" class="btn btn-primary">Home Page</a>

</div>

</body>
</html>
