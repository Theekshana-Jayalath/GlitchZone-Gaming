
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
  <link rel="stylesheet" href="./CSS/EventPath.css">
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
  <div class="main-container">
    <div class="box">🎮 New Games</div>
    <div class="box">⭐ Top Rated</div>
    <div class="box">🔥 Trending Games</div>
    <div class="box"><a href="Event.jsp">📅 Events</a></div>
    <div class="box">🚀 Upcoming</div>
    <div class="box">👥 Multiplayer</div>
    <div class="box">🎯 Editor’s Pick</div>
    <div class="box">FeedBack</div>
  </div>
  
</body>