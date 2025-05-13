<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GlitchZone-New Game Entry</title>

<!--text-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jaro:opsz@6..72&display=swap" rel="stylesheet">
  

 <script> 	//
    function togglePriceField() { //it will called the user switches between radio buttons(free or paid)
      const freeOption = document.getElementById("free");// Refers to the radio button with id="free"
      const priceField = document.getElementById("price");//Refers to the input field for the game's price.
      
      if (freeOption.checked) { //If "Free" is selected (freeOption.checked === true):
        priceField.value = ""; //Clears anything typed into the price field.
        priceField.disabled = true;	//Disables the input so the user cannot type into it.

      } else {	//Disables the input so the user cannot type into it.
        priceField.disabled = false;	//The priceField becomes enabled again, so the user can enter a value.
      }
    }

    // Call function on page load to set initial state
    window.onload = function() {	// if the user refreshes the page and "Free" is already selected, the price field will still be disabled.
      togglePriceField(); //
    };
  </script>

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


.radio-options {
    display: flex;
    gap: 40%; 
    align-items: center;
   
}

input[type="radio"] {
    accent-color: #4B9CD3;
    transform: scale(1.2);
    cursor: pointer;
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

input[type="text"], textarea, select {
    width: 50%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
    transition: border-color 0.3s ease;
    background-color: rgba(233, 232, 232, 0.834); 
}

  #reset{
    margin-left: 15%;
  }

  #add_game{
    margin-right: 15%;
  }

  #reset, #add_game{
    width: 100px;
  }
 
input[type="submit"],
input[type="reset"] {
    background-color: #4c48d2;
    color: #fff;
    border: none;
    font-size: 15px;
    border-radius: 5px;
    padding: 10px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover,
input[type="reset"]:hover {
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
<div class="one">
<fieldset>
	<legend>New Game Details</legend>

	<form action="mgInsertServlet" method="post">
	<div class="two">

				<div class="form-group">
                    <label for="title"><b>Title</b></label>
                    <input type="text" id="title" name="title" placeholder="Name of the game">
                </div><br/>
                      
               
                <div class="form-group">
                    <label for="genre"><b>Genre</b></label>
                    <input type="text" id="genre" name="genre" required>
                </div><br/>
                    
                <div class="form-group">
                    <label class="form-lable" for="description"><b>Description</b></label>
                    <textarea id="description" name="description" rows="5" cols="40" placeholder="Enter a description"></textarea>
                </div><br/><br/>
                
                <div class="form-group">
                    <label for="max_players"><b>Max Players</b></label>
                    <input type="text" id="max_players" name="max_players" required>
                </div><br/>

                <div class="form-group">
                <label for="game_mode"><b>Game Mode</b></label>
                <select name="game_mode" id="game_mode" required>
                    <option value=""></option>
                    <option value="Single Player">Single Player</option>
                    <option value="Multiplayer">Multiplayer</option>
                    <option value="Single Player/Multiplayer">Single Player/Multiplayer</option>
                </select>
                </div><br/>

                <div class="form-group">
                    <label for="release_date"><b>Release Date</b></label>
                    <input type="text" id="release_date" name="release_date" required>
                </div><br/>

                <div class="form-group">
                    <label for="file_size"><b>File Size</b></label>
                    <input type="text" id="file_size" name="file_size" required>
                </div><br/>

                <div class="form-group">
                    <label for="free_or_paid"><b>Free or Paid</b></label>
                    <div class="radio-options">
                        <label><input type="radio" name="free_or_paid" value="Free" id="free" onchange="togglePriceField()" required> Free</label>
                        <label><input type="radio" name="free_or_paid" value="Paid" id="paid" onchange="togglePriceField()"> Paid</label>
                    </div>
                </div><br/>

                <div class="form-group">
                    <label for="price"><b>Price</b></label>
                    <input type="text" name="price" id="price" required>
                </div><br/>
                
                <div class="end">
                    <input type="reset" value="Reset" id="reset">
                    <input type="submit" value="Add Game" id="add_game">
                 </div>
			</div>
				
	</form>
</fieldset>
</div>
</body>
</html>