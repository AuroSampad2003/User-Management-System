<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="components/bootstrapCss.jsp" %>
<link rel="stylesheet" href="bg.css">
</head>
<body>
<%@ include file="components/navbar2.jsp"%>

<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Change Password</p>
						
						<form action="change" method="post">
							<div class="mb-3">
								<label class="form-label">Current Password</label> <input
									name="currentpassword" type="password" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">New Password</label> <input
									name="newpassword" type="password" class="form-control" required>
							</div>
							
							
							<div class="mb-3">
								<label class="form-label">Confirm Password</label> <input
									name="confirmpassword" type="password" class="form-control" required>
							</div>
							
							<button type="submit" class="btn bg-primary text-white col-md-12">Save-Changes</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>