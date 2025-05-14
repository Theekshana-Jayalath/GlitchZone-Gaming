<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="./CSS/UserProfileView.css">
</head>
<body>

    <div class="profile-container">
        <h2>User Profile</h2>

        <div class="profile-form">
            <div class="form-group">
                <label>First Name:</label>
                <span>${user.fname}</span>
            </div>
            <div class="form-group">
                <label>Last Name :</label>
                <span>${user.lname}</span>
            </div>
            <div class="form-group">
                <label>Email	 :</label>
                <span>${user.email}</span>
            </div>
            <div class="form-group">
                <label>Country	 :</label>
                <span>${user.country}</span>
            </div>
            <div class="form-group">
                <label>Username  :</label>
                <span>${user.uName}</span>
            </div>
            <div class="form-group">
                <label>Password  :</label>
                <span>********</span>
            </div>
        </div>

        <div class="action-buttons">
            <a href="UserProfile.jsp?id=${user.id}">
                <button type="button" class="update-btn">Update</button>
            </a>
            <a href="homePage.jsp">
                <button type="button" class="HomePage-btn">Home</button>
            </a>
            <a href="UserLogin.jsp">
                <button type="button" class="logout-btn">Log Out</button>
            </a>
        </div>
    </div>
 
</body>
</html>
