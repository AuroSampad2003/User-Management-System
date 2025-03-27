
<%@ page import="java.util.List" %>
<%@ page import="com.org.dao.UserDao" %>
<%@ page import="com.org.dto.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Home</title>
<%@ include file="components/bootstrapCss.jsp" %>
<link rel="stylesheet" href="bg.css">

<style>
  .body1 {
    position: relative;
    width: 100%;
    height: 100vh;
    background: #f4f4f4;
    background-size: 300% 300%;
    animation: colorChange 12s ease-in-out infinite;
  }

  @keyframes colorChange {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
  }

  .highlight {
    color: #d9534f;
    font-weight: 600;
  }

  .card-custom {
    background-color: rgba(255, 255, 255, 0.9);
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    padding: 40px;
  }

  .btn-custom {
    background-color: #007bff;
    color: white;
    border-radius: 25px;
    padding: 12px 30px;
    font-size: 18px;
    margin-top: 30px;
    border: none;
  }

  .btn-custom:hover {
    background-color: #0056b3;
    transition: background-color 0.3s ease;
  }
</style>
</head>
<body class="body1">

<% 
  User user = (User) session.getAttribute("userObj");
  if (user == null) {
    response.sendRedirect("login.jsp");
  } else {
%>
  <%@ include file="components/navbar2.jsp" %>

  <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
    <div class="card card-custom">
      <div class="text-center">
        <h1 class="display-4 text-primary">Hello, <span class="highlight"><%= user.getName() %></span></h1>
        <h2 class="my-4">Welcome to Our Home Page</h2>
        <p class="lead text-muted">We're delighted to have you here!</p>
        <a href="profile.jsp" class="btn btn-custom">View Your Profile</a>
      </div>
    </div>
  </div>

<% } %>

</body>
</html>
