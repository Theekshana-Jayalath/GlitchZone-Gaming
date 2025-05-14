<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Register - GlitchZone-Gaming</title>
  <link rel="stylesheet" href="./CSS/homePage.css">     
  <link rel="stylesheet" href="./CSS/Register.css">    
  <script src="./JS/UserRegister.js"></script>
</head>
<body>
<div class="register-container">
    <h2>Register</h2>
    <form action="UserInsertServlet" method="post">
      <input type="text" name="fname" placeholder="First Name" required />
      <input type="text" name="lname" placeholder="Last Name" required />
      <input type="text" name="email" placeholder="Email" required />
      <input type="text" name="country" placeholder="Country" required />
      <input type="text" name="uName" placeholder="Username" required />
      <input type="password" name="password" placeholder="Password" required />
      <input type = "submit" value = "Register"><br><br>
    </form>
    <div class="Login-link">
      <h5>Already have an account? <a href="UserLogin.jsp">Login</a></h5>
    </div>
  </div>
</body>
</html>