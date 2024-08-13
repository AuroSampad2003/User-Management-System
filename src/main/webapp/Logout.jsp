<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
<link rel="stylesheet" href="bg.css">
</head>

<style>
.container {
            max-width: 400px;
            margin: 100px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #343a40;
            margin-bottom: 20px;
        }
        #bb1 ,#bb2 {
            display: inline-block;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #dc3545;
            color: #fff;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        #bb1 {
            background-color: #c82333;
        }
        #bb2{
            background-color: #007bff;
        }
        #bb2:hover {
            background-color: #0056b3;
        }

</style>
<body>
     <div class="container">
        <h1>Are you sure you want to logout?</h1>
        <form action="logout" method="post">
       <input type="submit" name="confirm" class="btn btn-success text-decoration-none" id="bb1" value="YES">
         
            <a href="Home.jsp" class="btn btn-danger text-decoration-none" id="bb2">No</a>
        </form>
    </div>
    


</body>
</html>