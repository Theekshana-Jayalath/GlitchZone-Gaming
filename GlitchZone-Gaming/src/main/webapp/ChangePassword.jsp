<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Change Password - GlitchZone-Gaming</title>
  <link rel="stylesheet" href="./CSS/ChangePassword.css">
</head>
<body>
  <div class="change-password-container">
    <h2>Change Password</h2>
    <form action="ChangePasswordServlet" method="POST">
      <input type="password" name="newPassword" placeholder="New Password" required><br>
      <input type="password" name="confirmPassword" placeholder="Confirm Password" required><br>
      <input type="submit" value="Submit">
    </form>
    <% 
      String error = (String) request.getAttribute("error");
      if (error != null) {
    %>
      <p style="color:red;"><%= error %></p>
    <% } %>
  </div>
</body>
</html>