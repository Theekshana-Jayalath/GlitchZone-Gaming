<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./CSS/homePage.css">
  <link rel="stylesheet" href="./CSS/EventManagement.css">
 <link rel="stylesheet" href="./CSS/feedback.css" />
  
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
        <a href="homePage.jsp">Home</a>
        <a href="Gameswall.jsp">Games</a>
        <a href="#">Community</a>
        <a href="#">Login</a>
      </div>
    </div>
  </nav>
	<%
	  String FId =request.getParameter("id");
	  String full_name =request.getParameter("full_name");
	  String email =request.getParameter("email");
	  String subject =request.getParameter("subject");
	  String category =request.getParameter("category");
	  String message =request.getParameter("message");
	
	
	%>
	<div class="form-container">
    <h2>Feedback Submission</h2>
    <form id="feedbackForm" action ="feedbackUpdateServlet" method ="post">

<input type="text" id="FId" name="FId" value="<%=FId %>" readonly />

      <label for="full_name">Full Name:</label>
      <input type="text" id="fullname" name="full_name" value="<%=full_name %>"required />

      <label for="email">Email Address:</label>
      <input type="email" id="email" name="email"value="<%=email %>" required />

      <label for="subject">Subject:</label>
      <input type="text" id="subject" name="subject"value="<%=subject %>" required />

      <label for="category">Category:</label>
      <select id="category" name="category">
        <option value="<%=category %>"><%=category %></option>
        <option value="Bug">Bug</option>
        <option value="Suggestion">Suggestion</option>
        <option value="Support">Support</option>
      </select>

      <label for="message">Message:</label>
      <textarea id="message" name="message" value="<%=message %>" rows="5" required><%=message %></textarea>

      <div class="button-group">
        <button type="submit">Submit</button>
        <button type="button" id="clearBtn">Clear</button>
      </div>
      
      
    </form>
  </div>

</body>
</html>