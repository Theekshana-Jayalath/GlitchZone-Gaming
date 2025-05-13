<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./CSS/homePage.css">
  
  <link rel="stylesheet" href="./CSS/admindashbord.css">
</head>
<body>
 <nav class="navbar">
    <div class="navbar-container">
      
      <!-- Logo / Site Name -->
      <div class="logo">GlitchZone-Gaming</div>
      
      <!-- Search Bar -->
      <div class="search-bar">
        <input type="text" placeholder="Search games...">
        <button><i class="fas fa-search"></i></button>
      </div>


      <!-- Navigation Links -->
      <div class="nav-links">
        <a href="#">Home</a>
        <a href="#">Games</a>
        <a href="#">Community</a>
        <a href="#">Login</a>
      </div>
    </div>
  </nav>
  
   <div class="new">
  	<div class="first">
  	<h2>Feedback</h2>
  	<table>
  		<tr>
  			<th>ID</th>
  			<th>Full Name</th>
  			<th>Email</th>
  			<th>Subject</th>
  			<th>Category</th>
  			<th>Message</th>
  			
  		</tr>
  		<c:forEach var="feedbacks" items="${allFeedbacks}">
  		<tr>
  			<td>${feedbacks.FId}</td>
  			<td>${feedbacks.full_name}</td>
  			<td>${feedbacks.email}</td>
  			<td>${feedbacks.subject}</td>
  			<td>${feedbacks.category}</td>
  			<td>${feedbacks.message}</td>
  			
  			<td>
  				<a href="feedbackUpdate.jsp?id=${feedbacks.FId}&full_name=${feedbacks.full_name}&email=${feedbacks.email}&subject=${feedbacks.subject}&category=${feedbacks.category}&message=${feedbacks.message}">
  					<button class="btn update-btn">Update</button>
  				</a>
  				
  				<form action="feedbackDeleteServlet" method="post">
  				<input type="hidden" name="id" value="${feedbacks.FId}">
  					<button class="btn delete-btn">Delete</button>
  				</form>
  			</td>
  		</tr>
  		</c:forEach>
  	</table>
  		
  	</div>
  	</div>
   

</body>
</html>