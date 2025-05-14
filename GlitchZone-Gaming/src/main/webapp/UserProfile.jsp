<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<link rel="stylesheet" href="./CSS/UserProfile.css"> 
</head>
<body>
<div class="profile-container">
    <h2>User Profile</h2>
    <form action="UpdateUserProfileServlet" method="POST">
    	   
        <input type="hidden" name="id" value="${user.id}" />

        <label>First Name:</label><br>
        <input type="text" name="fname" value="${user.fname}" required/><br><br>

        <label>Last Name:</label><br>
        <input type="text" name="lname" value="${user.lname}" required/><br><br>

        <label>Email:</label><br>
        <input type="email" name="email" value="${user.email}" required/><br><br>

        <label>Country:</label><br>
        <input type="text" name="country" value="${user.country}" required/><br><br>

        <label>User Name:</label><br>
        <input type="text" name="uName" value="${user.uName}" required/><br><br>

        <label>Password:</label><br>
        <input type="password" name="password" value="${user.password}" required/><br><br>

        <input type="submit" value="Update" />
    </form>

    <form action="DeleteUserProfileServlet" method="POST" >
        <input type="hidden" name="id" value="${user.id}" />
        <input type="submit" value="Delete" onclick="return confirm('Are you sure you want to delete this profile?');" />
    </form>
</div>

</body>
</html>
