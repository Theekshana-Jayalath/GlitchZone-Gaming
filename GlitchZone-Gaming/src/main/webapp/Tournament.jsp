

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>GlitchZone-Gaming</title>
  <link rel="stylesheet" href="./stylesheet.css">
  <!-- Include icon library -->
  <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free/css/all.css" rel="stylesheet">
  <link rel="stylesheet" href="./CSS/homePage.css">
  <link rel="stylesheet" href="./CSS/Tournament.css">
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
        <a href="homePage.jsp">Home</a>
        <a href="Gameswall.jsp">Games</a>
        <a href="#">Community</a>
        <a href="#">Login</a>
      </div>
    </div>
  </nav>
   <div class="event-container">
  <div class="event-box"><a href="EventManagement.jsp">Create Tournament</a></div>
  <div class="event-box">Edit Tournament </div>
    <div class="event-box">Delete Tournament</div>
    <div class="event-box">View All Tournaments</div>
    <div class="event-box">Manage Participants</div>
    <div class="event-box">Bracket Management</div>
    <div class="event-box">Announce Winners / Update Results</div>
    <div class="event-box">Tournament Status Control</div>
    <div class="event-box">Send Notifications</div>
  </div>
</body>