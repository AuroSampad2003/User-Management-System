<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Logout</title>
  <link rel="stylesheet" href="bg.css">
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f1f3f5;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 400px;
      margin: 150px auto;
      background-color: #ffffff;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
      text-align: center;
      transition: transform 0.3s ease-in-out;
    }

    .container:hover {
      transform: translateY(-10px);
    }

    h1 {
      color: #343a40;
      font-size: 28px;
      margin-bottom: 20px;
      font-weight: 600;
      text-transform: capitalize;
    }

    .btn {
      padding: 14px 30px;
      border: none;
      border-radius: 30px;
      font-size: 18px;
      cursor: pointer;
      transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
      text-decoration: none;
      display: inline-block;
    }

    #bb1 {
      background-color: #c82333;
      color: white;
    }

    #bb1:hover {
      background-color: #dc3545;
      transform: translateY(-2px);
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    }

    #bb2 {
      background-color: #007bff;
      color: white;
      margin-left: 15px;
    }

    #bb2:hover {
      background-color: #0056b3;
      transform: translateY(-2px);
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    }

    /* Add a subtle glow effect on hover */
    .btn:hover {
      box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
    }

    /* Adding responsiveness */
    @media (max-width: 600px) {
      .container {
        padding: 25px;
      }

      h1 {
        font-size: 24px;
      }

      .btn {
        font-size: 16px;
        padding: 12px 25px;
      }
    }
  </style>
</head>
<body>

  <div class="container">
    <h1>Are you sure you want to logout?</h1>
    <form action="logout" method="post">
      <input type="submit" name="confirm" class="btn" id="bb1" value="YES">
      <a href="Home.jsp" class="btn" id="bb2">No</a>
    </form>
  </div>

</body>
</html>
