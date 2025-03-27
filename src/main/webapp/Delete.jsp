<%@page import="com.org.dto.User"%>
<%@page import="com.org.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Delete</title>
<%@ include file="components/bootstrapCss.jsp" %>
<link rel="stylesheet" href="bg.css">
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa;
        color: #343a40;
    }

    .container {
        max-width: 500px;
        margin-top: 100px;
    }

    .card {
        border-radius: 10px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }

    .card-body {
        text-align: center;
    }

    .btn-confirm {
        background-color: #dc3545;
        border-color: #dc3545;
        color: white;
        padding: 10px 20px;
        margin: 10px 0;
        font-size: 16px;
        border-radius: 5px;
        width: 100%;
    }

    .btn-confirm:hover {
        background-color: #c82333;
        border-color: #bd2130;
    }

    .btn-cancel {
        background-color: #6c757d;
        border-color: #6c757d;
        color: white;
        padding: 10px 20px;
        margin: 10px 0;
        font-size: 16px;
        border-radius: 5px;
        width: 100%;
    }

    .btn-cancel a {
        color: white;
        text-decoration: none;
    }

    .btn-cancel:hover {
        background-color: #5a6268;
        border-color: #545b62;
    }
</style>
</head>
<body>

<div class="container">
    <div class="card">
        <div class="card-body">
            <h3 class="mb-4">Are you sure you want to delete?</h3>

            <form action="delete" method="post">
                <input type="hidden" name="Id" value="<%= request.getParameter("id") %>">
                <button type="submit" name="confirm" class="btn btn-confirm">Yes</button>
            </form>
            <button class="btn btn-cancel"><a href="viewUser.jsp">No</a></button>
        </div>
    </div>
</div>

</body>
</html>
