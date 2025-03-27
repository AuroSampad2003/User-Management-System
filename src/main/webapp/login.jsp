<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@ include file="components/bootstrapCss.jsp" %>
<link rel="stylesheet" href="bg.css">
<style type="text/css">
    .card {
        border-radius: 10px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }

    .btn-primary {
        background-color: #007bff;
        border-color: #007bff;
    }

    .btn-primary:hover {
        background-color: #0056b3;
        border-color: #004085;
    }

    .container {
        margin-top: 50px;
    }

    .alert {
        font-size: 1.1rem;
        font-weight: bold;
    }
</style>
</head>
<body>
	<%@ include file="components/navbar.jsp"%>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6 col-lg-4">
				<div class="card">
					<div class="card-body p-4">
						<h3 class="text-center mb-4">User Login</h3>

						<% String msg = (String) session.getAttribute("fail"); 
						 if (msg != null) { %>
							 <div class="alert alert-danger text-center">
								 <%= msg %>
							 </div>
							 <% session.removeAttribute("fail"); %>
						 <% } %>

						 <% String msg1 = (String) session.getAttribute("change"); 
						 if (msg1 != null) { %>
							 <div class="alert alert-success text-center">
								 <%= msg1 %>
							 </div>
							 <% session.removeAttribute("change"); %>
						 <% } %>

						<form action="login" method="post">
							<div class="mb-3">
								<label for="email" class="form-label">Email Address</label>
								<input name="email" id="email" type="email" class="form-control" required>
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">Password</label>
								<input name="password" id="password" type="password" class="form-control" required>
							</div>
							<button type="submit" class="btn btn-primary w-100">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
