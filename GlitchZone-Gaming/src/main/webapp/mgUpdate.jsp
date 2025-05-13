<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
legend{
    font-family: "Jaro", sans-serif;
    font-optical-sizing: auto;
    font-weight: 400;
    font-style: normal;
    text-align: center;
    font-size: xx-large;
    color: #4c48d2;
}

fieldset{
    margin: 2% 20%;
    background-color: rgba(0, 0, 0, 0.7); /* semi-transparent dark background */
    border: 2px solid #00cc66;
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(0, 255, 127, 0.6);
}

.one{
    padding: 15px 15px; 
}

.two{ 
    padding: 30px; 
}

.form-group{
    display: flex;
    align-items: center;
    margin-bottom: 15px;
}

.form-group label {
    width: 25%;
    text-align: right;
    margin-right: 10px;
    font-size: 14px;
    color: #acc2cf;
  }

#game_mode{
    width: 55%;
}

label{
    padding-right: 50px;
}

.end{
    display: flex;
    justify-content: center; /* or space-between, if needed */
    gap: 10%; /* controls the spacing between buttons */
    margin-top: 20px;
  }

input[type="text"], textarea {
    width: 50%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
    transition: border-color 0.3s ease;
    background-color: rgba(233, 232, 232, 0.834); 
}

  #add_game{
    margin-right: 15%;
  }

#add_game{
    width: 100px;
  }
 
input[type="submit"] {
    background-color: #4c48d2;
    color: #fff;
    border: none;
    font-size: 15px;
    border-radius: 5px;
    padding: 10px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #1687d2;
}

body {
    background-image: url('images/HP.png');
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
}

</style>

</head>
<body>
	<%
		String id= request.getParameter("id");
		String title= request.getParameter("title");
		String genre= request.getParameter("genre");
		String description= request.getParameter("description");
		String max_players= request.getParameter("max_players");
		String game_mode= request.getParameter("game_mode");
		String release_date= request.getParameter("release_date");
		String file_size= request.getParameter("file_size");
		String free_or_paid= request.getParameter("free_or_paid");
		String price= request.getParameter("price");
	%>

<div class="one">
<fieldset>
	<legend>New Game Details</legend>

	<form action="mgUpdateServlet" method="post">
	<div class="two">
	
				<div class="form-group">
                    <label for="id"><b>ID</b></label>
                    <input type= "text" name="id" value="<%=id%>" readonly>
                </div><br/>

				<div class="form-group">
                    <label for="title"><b>Title</b></label>
                    <input type= "text" name="title" value="<%=title%>" required>
                </div><br/>
                      
               
                <div class="form-group">
                    <label for="genre"><b>Genre</b></label>
                    <input type= "text" name="genre" value="<%=genre%>" required>
                </div><br/>
                    
                <div class="form-group">
                    <label for="max_players"><b>Max Players</b></label>
                    <input type= "text" name="max_players" value="<%=max_players%>" required>
                </div><br/>
                
                <div class="form-group">
                    <label class="form-lable" for="description"><b>Description</b></label>
                    <textarea name="description" value="<%=description%> rows="5" cols="40" required><%=description%></textarea>
                </div><br/><br/>
                
                

                <div class="form-group">
                <label for="game_mode"><b>Game Mode</b></label>
                <input type= "text" name="game_mode" value="<%=game_mode%>" required>
                </div><br/>

                <div class="form-group">
                    <label for="release_date"><b>Release Date</b></label>
                    <input type= "text" name="release_date" value="<%=release_date%>" required>
                </div><br/>

                <div class="form-group">
                    <label for="file_size"><b>File Size</b></label>
                    <input type= "text" name="file_size" value="<%=file_size%>" required>
                </div><br/>

                <div class="form-group">
                    <label for="free_or_paid"><b>Free or Paid</b></label>
                    <div class="radio-options">
                        <input type= "text" name="free_or_paid" value="<%=free_or_paid%>" required>
                    </div>
                </div><br/>

                <div class="form-group">
                    <label for="price"><b>Price</b></label>
                    <input type= "text" name="price" value="<%=price%>" required>
                </div><br/>
                
                <div class="end">
                    <input type="submit" value="Update" id="add_game">
                 </div>
			</div>
				
	</form>
</fieldset>
</div>
</body>
</html>