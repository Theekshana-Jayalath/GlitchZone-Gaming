<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login - GlitchZone-Gaming</title>
  <link rel="stylesheet" href="./CSS/homePage.css">
  <link rel="stylesheet" href="./CSS/UserLogin.css">    
</head>
<body>

  <div class="login-container">
    <h2>Login</h2>
    <form action = "UserLoginServlet" method = "POST">
		<input type = "text" name = "uName" placeholder="Username" required ><br>
		<input type = "password" name = "password" placeholder="Password" required><br>
      <input type="submit" name = "submit" value="Login" >
    </form>
    <div class="forgot-password">
  		<a href="ForgotPassword.jsp">Forgot Password</a>
	</div>
    <div class="register-link">
          Don't have an account? <a href="UserRegister.jsp">Register</a>
    </div>
  </div>

</body>
</html>