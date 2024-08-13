<%@page import="com.org.dto.User"%>
<%@page import="com.org.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
<link rel="stylesheet" href="bg.css">
</head>
    <style>
    body{
    text-align:center;
    }
    </style>
<body>
	<p>Are you sure you want to delete?</p>
	 
	<form action="delete" method="post">
        <input type="hidden" name="Id" value="<%= request.getParameter("id") %>">
        <input type="submit" name="confirm" value="Yes">
        <button><a href="viewUser.jsp">No</a></button>
	</form>
</body>
</html>