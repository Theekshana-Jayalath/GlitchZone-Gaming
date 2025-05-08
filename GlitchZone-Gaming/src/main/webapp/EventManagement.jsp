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
        <a href="Gameswall.jsp">Games</a>
        <a href="#">Community</a>
        <a href="#">Login</a>
      </div>
    </div>
  </nav>

  <div class="new">
  	<div class="first">
  		<fieldset>
  			<legend style="text-align: center;"><b>ADD A NEW TOURNAMENT</b></legend>
  			<form action="EventInsertServlet" method="post" class="my" >
  				<b>Tournament Name : </b><br/>
  				<input type="text" name="name" placeholder="Tournament Name" autocomplete="off"><br /><br />
  				<b>Start Date :</b><br/>
  				<input type="date" name="start_date" ><br/><br/>
  				<b>End Date :</b><br/>
  				<input type="date" name="end_date" ><br/><br/>
  				<b>Game Description :</b><br/>
  				<textarea name="description" rows="4" cols="35" required></textarea><br /><br />
  				<b>Player Type :</b><br/>
  				<select name="player_type">
  					<option value="" selected disabled hidden>-- Select an option --</option>
  					<option value="solo">Solo</option>
  					<option value="duo">Duo</option>
  					<option value="team">Team</option>
  				</select><br/><br/>
  				<b>Rewards Type :</b><br/>
  				<select name="reward_type">
  					<option value="" selected disabled hidden>-- Select an option --</option>
  					<option value="coins">Coins</option>
  					<option value="badges">Badges</option>
  					<option value="skins">Skins</option>
  					<option value="leaderboard">Leaderboard Boosts</option>
  				</select><br/><br/>
  				<b>Entry Fee (if any):</b><br/>
  				<select name="entry_fee">
  					<option value="" selected disabled hidden>-- Select an option --</option>
  					<option value="poins">Poins</option>
  					<option value="coins">Coins</option>
  					<option value="free">Free</option>
  				</select><br/><br/>
  				
  				<div class="fbtn">
  				
  							  <button id="submitBtn2" type="reset" value="Reset" name="reset" onclick="myfunction()">Reset</button>
                            <button id="submitBtn1" type="submit" value="Submit" name="submit" onclick="myfunction()">Submit</button>
                       
                            
                </div>
  			</form>
  		</fieldset>
  </div>
  </div>
  
  
 
</body>
</html>
