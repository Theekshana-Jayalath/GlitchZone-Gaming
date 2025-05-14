<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Login - GlitchZone-Gaming</title>
  <link rel="stylesheet" href="./CSS/homePage.css">
  <link rel="stylesheet" href="./CSS/UserLogin.css">    
</head>
<body>

  <div class="login-container">
    <h2>Admin Login</h2>
    <form action="AdminLoginServlet" method="POST">
      <input type="text" name="username" placeholder="Admin Username" required><br>
      <input type="password" name="password" placeholder="Admin Password" required><br>
      <input type="submit" name="submit" value="Login">
    </form>
    <div class="register-link">
      <a href="UserLogin.jsp">User Login</a>
    </div>
  </div>

</body>
</html>