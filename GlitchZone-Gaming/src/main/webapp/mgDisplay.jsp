<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GlitchZone-Gaming</title>

<link rel="stylesheet" type="text/css" href="CSS/style.css">


<!--text-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jaro:opsz@6..72&display=swap" rel="stylesheet">


<style>
body {
    
    background-color: #e3fcff;
    padding: 40px;
    background-image: url('images/HP.png');
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
}

h2 {
    text-align: center;
    color: #4c48d2;
    font-size: 36px;
    text-shadow: 2px 2px 4px #000;
}
table {
    width: 90%;
    margin: auto;
    border-spacing: 0;
    background: rgba(86, 144, 246, 0.3); /* glass effect */
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 0 25px rgba(0, 255, 127, 0.7);
    backdrop-filter: blur(6px);
}

th, td {
    padding: 14px 20px;
    text-align: center;
    border-bottom: 1px solid rgba(0, 204, 102, 0.3);
    color: #e7e3e3;
    font-size: 15px;
}

th {
    background-color: rgba(60, 60, 60, 0.9);
    color: #00ffcc;
    font-size: 16px;
    letter-spacing: 1px;
    text-transform: uppercase;
}

td {
    background-color: rgba(255, 255, 255, 0.05);
    backdrop-filter: blur(3px);
}

tr:hover td {
    background-color: rgba(76, 72, 210, 0.2);
    transition: background-color 0.3s ease;
}

/* Buttons inside table */
table button {
    background-color: #4c48d2;
    color: white;
    border: none;
    padding: 6px 12px;
    font-size: 14px;
    border-radius: 5px;
    cursor: pointer;
    margin: 2px;
    transition: all 0.3s ease;
}

table button:hover {
    background-color:rgba(5, 2, 95, 0.496);
    transform: scale(1.05);
}

button {
    background-color: #4c48d2;
    color: white;
    border: none;
    padding: 8px 14px;
    border-radius: 6px;
    cursor: pointer;
    font-size: 14px;
    margin: 2px;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #1687d2;
}

form {
    display: inline;
}

</style>
</head>
<body>
<h2>Game table</h2>
<table>
	<tr>
		<th>ID</th>
		<th>Title</th>
		<th>Genre</th>
		<th>Description</th>
		<th>Max Players</th>
		<th>Release date</th>
		<th>File size</th>
		<th>Game Mode</th>
		<th>Free or Paid</th>
		<th>Price</th>
		<th>Action</th>
	</tr>
	<c:forEach var="game" items="${allGames}">
	<tr>
		<td>${game.id}</td>
		<td>${game.title}</td>
		<td>${game.genre}</td>
		<td>${game.description}</td>
		<td>${game.max_players}</td>
		<td>${game.game_mode}</td>
		<td>${game.release_date}</td>
		<td>${game.file_size}</td>
		<td>${game.free_or_paid}</td>
		<td>${game.price}</td>
		<td>
			<a href = "mgUpdate.jsp?id=${game.id}&title=${game.title}&genre=${game.genre}&max_players=${game.description}&description=${game.max_players}&release_date=${game.game_mode}&free_or_paid=${game.release_date}&file_size=${game.file_size}&game_mode=${game.free_or_paid}&price=${game.price}">
				<button>Update</button>
			</a>
			
			<form action="mgDeleteServlet" method="post">
			<input type="hidden" name="id" value="${game.id}">
				<button>Delete</button>
			</form>
			
		</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>