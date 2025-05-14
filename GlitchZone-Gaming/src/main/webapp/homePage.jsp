<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>GlitchZone-Gaming</title>
  <link rel="stylesheet" href="./CSS/homePage.css">
  <script src="./JS/homePage.js"></script>
  <!-- Include icon library -->
  <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free/css/all.css" rel="stylesheet">

  <script src="./style.js"></script>
  <style>
 /* Reset default styles */


  .slide video {
  width: 1500px;
  height: 500px;
  object-fit: cover; /* Optional: crop to fill the area */
}


/* Welcome Section */
.welcome-section {
  background: linear-gradient(to right, #1f1c2c, #047b99);
  width: 1520px;
  height: 380px;
  color: #fff;
  padding: 60px 20px;
  text-align: center;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.welcome-content h1 {
  font-size: 48px;
  margin-bottom: 20px;
}

.welcome-content p {
  font-size: 20px;
  max-width: 800px;
  margin: 0 auto 30px;
}

.explore-button {
  padding: 12px 30px;
  background-color: #ff4757;
  color: white;
  text-decoration: none;
  font-size: 18px;
  border-radius: 8px;
  transition: background-color 0.3s ease;
}

.explore-button:hover {
  background-color: #e84118;
}
  
  
  </style>
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
        <a href="UserProfileView.jsp">Hi! ${user.fname}</a>
      </div>
    </div>
  </nav>

  
  <!-- Slideshow Banner -->  
  
<div class="banner-wrapper">
    <div class="slideshow-container">
  
      <!-- Slides -->
      <!-- Slides -->
<div class="slide fade"><img src="./images/p2.jpg" /></div>
<div class="slide fade"><img src="./images/p7.jpg" /></div>
<div class="slide fade">
  <video autoplay muted loop playsinline>
    <source src="${pageContext.request.contextPath}/resources/videos/pv10.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>


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


  <!-- Welcome Text Section -->
<section class="welcome-section">
  <div class="welcome-content">
    <h1>Welcome to GlitchZone-Gaming</h1>
    <p>Your ultimate hub for discovering, exploring, and playing the best online games. Whether you're into action, strategy, or arcade, we’ve got something for every gamer.</p>
    <a href="Gameswall.jsp" class="explore-button">Explore Games</a>
  </div>
</section>

  
</body>
</html>