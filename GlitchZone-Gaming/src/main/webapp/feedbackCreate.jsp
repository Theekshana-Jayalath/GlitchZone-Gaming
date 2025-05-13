<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feedback Submission</title>
  <link rel="stylesheet" href="./CSS/feedback.css" />
  <link rel="stylesheet" href="./CSS/homePage.css">
  <script src="./JS/feedback.js"></script>
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
<div class="form-container">
    <h2>Feedback Submission</h2>
    <form id="feedbackForm" action="FeedbackInsertServlet" method ="post">
      <label for="full_name">Full Name:</label>
      <input type="text" id="fullname" name="full_name" required />

      <label for="email">Email Address:</label>
      <input type="email" id="email" name="email" required />

      <label for="subject">Subject:</label>
      <input type="text" id="subject" name="subject" required />

      <label for="category">Category:</label>
      <select id="category" name="category">
        <option value="Bug">Bug</option>
        <option value="Suggestion">Suggestion</option>
        <option value="Support">Support</option>
      </select>

      <label for="message">Message:</label>
      <textarea id="message" name="message" rows="5" required></textarea>

      <div class="button-group">
        <button type="submit">Submit</button>
        <button type="button" id="clearBtn">Clear</button>
      </div>
    </form>
  </div>
</body>
</html>