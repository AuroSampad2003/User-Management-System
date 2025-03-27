<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Change Password</title>
<%@ include file="components/bootstrapCss.jsp" %>
<link rel="stylesheet" href="bg.css">
<style>
    .card {
        border-radius: 10px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }

    .container {
        margin-top: 50px;
    }

    .btn-primary {
        background-color: #007bff;
        border-color: #007bff;
    }

    .btn-primary:hover {
        background-color: #0056b3;
        border-color: #004085;
    }

    .card-body {
        padding: 2rem;
    }

    .form-label {
        font-size: 1rem;
    }

    h4 {
        font-size: 24px;
        color: #007bff;
    }

    .form-control {
        border-radius: 8px;
    }
</style>
</head>
<body>
<%@ include file="components/navbar2.jsp"%>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center mb-4">Change Password</h4>

                    <form action="change" method="post">
                        <div class="mb-3">
                            <label class="form-label">Current Password</label>
                            <input name="currentpassword" type="password" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">New Password</label>
                            <input name="newpassword" type="password" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Confirm Password</label>
                            <input name="confirmpassword" type="password" class="form-control" required>
                        </div>

                        <button type="submit" class="btn btn-primary w-100">Save Changes</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
