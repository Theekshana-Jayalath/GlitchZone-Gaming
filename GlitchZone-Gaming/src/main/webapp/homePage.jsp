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

  
  <!-- Slideshow Banner -->  
  
<div class="banner-wrapper">
    <div class="slideshow-container">
  
      <!-- Slides -->
      <div class="slide fade"><img src="./images/allPages/B.jpg" /></div>
      <div class="slide fade"><img src="./images/allPages/B1.jpg" /></div>
      <div class="slide fade"><img src="./images/allPages/B2.jpg" /></div>
  
      <!-- Arrow Buttons -->
      <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
      <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>
  
    <!-- Dots / Indicators -->
    <div class="dot-container">
      <span class="dot" onclick="currentSlide(1)"></span>
      <span class="dot" onclick="currentSlide(2)"></span>
      <span class="dot" onclick="currentSlide(3)"></span>
    </div>
  </div>
  
</body>
</html>
