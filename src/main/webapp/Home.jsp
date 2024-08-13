<%@page import="java.util.List"%>
<%@page import="com.org.dao.UserDao"%>
<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<%@ include file="components/bootstrapCss.jsp" %>
<link rel="stylesheet" href="bg.css">

<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f0f5f9;
    color: #333;
  }
  .body1{
    position: relative;
     width: 100%;
     height: 100vh;
     background: black;
     background: linear-gradient(45deg , rgb(34, 80, 149), rgb(170, 188, 212),  rgb(191, 234, 243) );
     background-size: 300% 300%;
     animation: clr 12s ease-in-out infinite;
  }
  .container {
    max-width: 800px;
    margin: 0 auto;
    text-align: center;
    padding: 50px 20px;
  }
  h1 {
    font-size: 36px;
    color: #007bff;
  }
  p {
    font-size: 20px;
    margin-top: 20px;
    color: gray;
  }
  span {
  color: crimson;
  }
</style>
</head>
<body>						 
  <%

  User user = (User) session.getAttribute("userObj");
  if (user == null){
  response.sendRedirect("login.jsp");
  }
  else{
  %>
  <%@ include file="components/navbar2.jsp"%>


  <div class="container">
    <h1>Hello, <span> <%= user.getName() %></span></h1>
    <h1>Welcome to Our Home Page</h1>
    <p>We're delighted to have you here!</p>
  </div>
            
  <% }%>
						
</body>
</html>