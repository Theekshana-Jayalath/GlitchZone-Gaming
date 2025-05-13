<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String start_date = request.getParameter("start_date");
	String end_date = request.getParameter("end_date");
	String description = request.getParameter("description");
	String player_type = request.getParameter("player_type");
	String reward_type = request.getParameter("reward_type");
	String entry_fee = request.getParameter("entry_fee");
%>

	<div class="new">
  	<div class="first">
  		<fieldset>
  			<legend style="text-align: center;"><b>ADD A NEW TOURNAMENT</b></legend>
  			<form action="EventUpdateServlet" method="post" class="my" >
  				<b>Tournament ID : </b><br/>
  				<input type="text" name="id" value="<%=id%>" readonly><br /><br />
  				<b>Tournament Name : </b><br/>
  				<input type="text" name="name" value="<%=name%>"  placeholder="Tournament Name" autocomplete="off"><br /><br />
  				<b>Start Date :</b><br/>
  				<input type="date" name="start_date" value="<%=start_date%>" ><br/><br/>
  				<b>End Date :</b><br/>
  				<input type="date" name="end_date" value="<%=end_date%>" ><br/><br/>
  				<b>Game Description :</b><br/>
  				<textarea name="description" value="<%=description%>"  rows="4" cols="35" required><%=description%></textarea><br /><br />
  				<b>Player Type :</b><br/>
  				<select name="player_type" value="<%=player_type%>" >
  					<option value="<%=player_type%>"><%=player_type%></option>
  					<option value="solo">Solo</option>
  					<option value="duo">Duo</option>
  					<option value="team">Team</option>
  				</select><br/><br/>
  				<b>Rewards Type :</b><br/>
  				<select name="reward_type" value="<%=reward_type%>" >
  					<option value="<%=reward_type%>"><%=reward_type%></option>
  					<option value="coins">Coins</option>
  					<option value="badges">Badges</option>
  					<option value="skins">Skins</option>
  					<option value="leaderboard">Leaderboard Boosts</option>
  				</select><br/><br/>
  				<b>Entry Fee (if any):</b><br/>
  				<select name="entry_fee" value="<%=entry_fee%>" >
  					<option value="<%=entry_fee%>"><%=entry_fee%></option>
  					<option value="poins">Poins</option>
  					<option value="coins">Coins</option>
  					<option value="free">Free</option>
  				</select><br/><br/>
  				
  				<div class="fbtn">
  				
                            <button id="submitBtn1" type="submit" value="Submit" name="submit" onclick="myfunction()">Submit</button>
                            
                </div>
  			</form>
  		</fieldset>
  </div>
  </div>
</body>
</html>