<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Profiles</title>
    <link rel="stylesheet" href="./CSS/ProfileDetails.css">
</head>
<body>
    <h2>Profiles Table</h2>
    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>User Name</th>
            <th>Password</th>
            <th>Action</th>
        </tr>
        <c:forEach var="profile" items="${allProfiles}">
            <tr>
                
                <td>${user.fname}</td>
                <td>${user.lname}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
                <td>${user.uName}</td>
                <td>${user.password}</td>
                <td>
                	<a href = "UpdateProfile.jsp?id=${profile.id}&fname=${profile.fname}&lname=${profile.lname}&email=${profile.email}&country=${profile.country}&uName=${profile.uName}&password=${profile.password}">
                		<button>Update</button>
               	    </a>
               	    
               	    <form action = "DeleteProfileServlet" method = "POST">
               	    <input type = "hidden" value = "${profile.id}" name = "id">
               	    	<button>Delete</button>
               	    </form>
                </td>
        	</tr>
        </c:forEach>
    </table>
      
</body>
</html>