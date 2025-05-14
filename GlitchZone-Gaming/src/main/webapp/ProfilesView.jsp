<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Profiles - GlitchZone-Gaming</title>
    <link rel="stylesheet" href="./CSS/ProfileDetails.css">
</head>
<body>
    
    <div class="profiles-container">
        <div class="profiles-header">
            <h2>Registered Users</h2>
            <a href="Admin.jsp" class="back-button">Back to Dashboard</a>
        </div>
        
        <table>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Username</th>
                <th>Password</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="profile" items="${allProfiles}">
                <tr>
                    <td>${profile.id}</td>
                    <td>${profile.fname}</td>
                    <td>${profile.lname}</td>
                    <td>${profile.email}</td>
                    <td>${profile.country}</td>
                    <td>${profile.uName}</td>
                    <td>${profile.password}</td>
                    <td class="action-buttons">
                        <a href="UpdateUserProfileServlet.jsp?id=${profile.id}&fname=${profile.fname}&lname=${profile.lname}&email=${profile.email}&country=${profile.country}&uName=${profile.uName}&password=${profile.password}">
                            <button class="update-button">Update</button>
                        </a>
                        
                        <form action="DeleteUserProfileServlet" method="POST" style="display:inline;">
                            <input type="hidden" name="id" value="${profile.id}">
                            <button type="submit" class="delete-button">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>