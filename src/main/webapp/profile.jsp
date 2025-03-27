<%@ page import="com.org.dao.UserDao" %>
<%@ page import="java.util.List" %>
<%@ page import="com.org.dto.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<%@ include file="components/bootstrapCss.jsp" %>
<link rel="stylesheet" href="bg.css">

<style type="text/css">
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f2f4f7;
  }

  .container {
    max-width: 800px;
    margin: 50px auto;
    padding: 40px;
    background-color: #ffffff;
    border-radius: 12px;
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
  }

  .profile {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 30px;
    background-color: #6a5acd; /* Purple background */
    border-radius: 12px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    color: white;
    text-align: center;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
  }

  .profile:hover {
    transform: translateY(-10px);
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
  }

  .profile img {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    margin-bottom: 20px;
    border: 4px solid #fff; /* Border around image */
  }

  .profile h2 {
    color: #ffcc00; /* Yellow color for name */
    margin-bottom: 15px;
    text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
  }

  .profile p {
    font-size: 18px;
    color: #e8e8e8; /* Light text color */
    line-height: 1.6;
  }

  .actions a {
    margin: 12px;
  }

  .btn-custom {
    background-color: #007bff; /* Blue color */
    color: white;
    padding: 12px 25px;
    border-radius: 30px;
    font-size: 16px;
    text-decoration: none;
    transition: background-color 0.3s ease, transform 0.3s ease;
  }

  .btn-custom:hover {
    background-color: #0056b3;
    transform: scale(1.05);
  }

  .btn-danger {
    background-color: #e74c3c; /* Red color */
    color: white;
    border-radius: 30px;
    padding: 12px 25px;
    font-size: 16px;
    text-decoration: none;
    transition: background-color 0.3s ease, transform 0.3s ease;
  }

  .btn-danger:hover {
    background-color: #c0392b;
    transform: scale(1.05);
  }

  .btn-back {
    background-color: #28a745; /* Green color */
    color: white;
    font-size: 16px;
    text-decoration: none;
    padding: 12px 25px;
    border-radius: 30px;
    transition: background-color 0.3s ease, transform 0.3s ease;
  }

  .btn-back:hover {
    background-color: #218838;
    transform: scale(1.05);
  }

  /* Responsive Design */
  @media (max-width: 768px) {
    .container {
      padding: 20px;
    }

    .profile img {
      width: 120px;
      height: 120px;
    }

    .profile h2 {
      font-size: 24px;
    }

    .profile p {
      font-size: 16px;
    }

    .btn-custom, .btn-danger, .btn-back {
      font-size: 14px;
      padding: 10px 20px;
    }
  }

</style>
</head>
<body>

<%@ include file="components/navbar2.jsp" %>

<% 
  User sessionUser = (User) session.getAttribute("userObj");
  if (sessionUser == null) {
    response.sendRedirect("login.jsp");
  } else {
%>

<div class="container">
  <h1 class="text-center text-primary">Welcome to Your Profile</h1>

  <% UserDao dao = new UserDao(); List<User> list = dao.fetchAllUser(); for (User u : list) { 
    if (sessionUser.getId() != u.getId()) { continue; }
  %>

  <div class="profile">
    <img src="profilei.jpg" alt="Profile Picture">
    <h2><%= u.getName() %></h2>
    <div class="actions">
      <p>Age: <%= u.getAge() %></p>
      <p>Email: <%= u.getEmail() %></p>
      <p>Mobile: <%= u.getMobile() %></p>
    </div>
    <div class="actions">
      <a href="Update.jsp?id=<%= u.getId() %>" class="btn btn-custom">Update Profile</a>
      <a href="Delete.jsp?id=<%= u.getId() %>" class="btn btn-danger">Delete Profile</a>
    </div>
  </div>

  <% } %>

  <div class="text-center mt-4">
    <a href="Home.jsp" class="btn btn-back">Go to Home Page</a>
  </div>

</div>

<% } %>

</body>
</html>
