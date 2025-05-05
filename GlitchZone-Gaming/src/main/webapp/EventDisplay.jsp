<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>GlitchZone-Gaming</title>
  <link rel="stylesheet" href="./stylesheet.css">
  <!-- Include icon library -->
  <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free/css/all.css" rel="stylesheet">
  <link rel="stylesheet" href="./CSS/homePage.css">
  <link rel="stylesheet" href="./CSS/EventManagement.css">
  <script src="./JS/homePage.js"></script>
</head>
<body>

  <!-- Navigation Bar -->
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
  	<h2>Tournaments</h2>
  	<table>
  		<tr>
  			<th>ID</th>
  			<th>Name</th>
  			<th>Start Date</th>
  			<th>End Date</th>
  			<th>Description</th>
  			<th>Player Type</th>
  			<th>Reward Type</th>
  			<th>Entry Fee</th>
  			<th>Action</th>
  		</tr>
  		<c:forEach var="Event" items="${allEvents}">
  		<tr>
  			<td>${Event.id}</td>
  			<td>${Event.name}</td>
  			<td>${Event.start_date}</td>
  			<td>${Event.end_date}</td>
  			<td>${Event.description}</td>
  			<td>${Event.player_type}</td>
  			<td>${Event.reward_type}</td>
  			<td>${Event.entry_fee}</td>
  			
  			<td>
  				<a href="EventUpdate.jsp?id=${Event.id}&name=${Event.name}&start_date=${Event.start_date}&end_date=${Event.end_date}&description=${Event.description}&player_type=${Event.player_type}&reward_type=${Event.reward_type}&entry_fee=${Event.entry_fee}">
  					<button>Update</button>
  				</a>
  				
  				<form action="EventDeleteServlet" method="post">
  				<input type="hidden" name="id" value="${Event.id}">
  					<button>Delete</button>
  				</form>
  			</td>
  		</tr>
  		</c:forEach>
  	</table>
  		
  	</div>
  	</div>
   
</body>
</html>