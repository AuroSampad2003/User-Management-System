<%@page import="com.org.dto.User"%>
<%@page import="com.org.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<%@ include file="components/bootstrapCss.jsp" %>
<link rel="stylesheet" href="bg.css">
<style type="text/css">
    .card {
        border-radius: 10px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }

    .btn-success {
        background-color: #28a745;
        border-color: #28a745;
    }

    .btn-success:hover {
        background-color: #218838;
        border-color: #1e7e34;
    }

    .container {
        margin-top: 50px;
    }

    .alert {
        font-size: 1.1rem;
        font-weight: bold;
    }

    h1 {
        font-size: 36px;
        color: #007bff;
    }
</style>

</head>
<body>
<%@ include file="components/navbar2.jsp"%>

<%  
    String strId = request.getParameter("id"); 
    int id = Integer.parseInt(strId);
    UserDao dao = new UserDao();
    User user = dao.fetchUserById(id);
%>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-4">
            <div class="card">
                <div class="card-body p-4">
                    <h3 class="text-center mb-4">Update Profile</h3>

                    <form action="update" method="post">
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input name="name" id="name" type="text" class="form-control" value="<%= user.getName() %>" required>
                        </div>
                        <div class="mb-3">
                            <label for="age" class="form-label">Age</label>
                            <input name="age" id="age" type="tel" class="form-control" required value="<%= user.getAge() %>">
                        </div>
                        <div class="mb-3">
                            <label for="mobile" class="form-label">Mobile</label>
                            <input name="mobile" id="mobile" type="tel" class="form-control" required value="<%= user.getMobile() %>">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email Address</label>
                            <input name="email" id="email" type="email" class="form-control" required value="<%= user.getEmail() %>">
                        </div>
                        <div class="mb-3">
                            <input name="id" type="hidden" class="form-control" value="<%= user.getId() %>">
                        </div>

                        <button type="submit" class="btn btn-success w-100">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
