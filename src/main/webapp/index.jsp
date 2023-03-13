<!DOCTYPE html>
<html>
<head>
	<title>Buggy Game</title>
	<style>
		body {
			background-color: #00FF00;
			color: #000000;
			font-size: 20px;
		}

		button {
			background-color: #FF0000;
			color: #000000;
			font-size: 20px;
			border: none;
			border-radius: 5px;
			padding: 10px;
			margin-top: 20px;
			cursor: pointer;
		}
	</style>
</head>
<body>

	<h1>Buggy Game</h1>

	<p>Click the button as many times as you can in 10 seconds!</p>

	<button id="startBtn">Start Game!</button>
	<p id="timer">10</p>
	<button id="clickBtn">Click Me!</button>
	<p id="score">0</p>

	<script>
		let timer = 10;
		let score = 0;

		document.getElementById("clickBtn").addEventListener("click", () => {
			score = score + 1;
			document.getElementById("score").innerHTML = score;
		});

		document.getElementById("startBtn").addEventListener("click", () => {
			let interval = setInterval(() => {
				timer--;
				document.getElementById("timer").innerHTML = timer;

				if (timer <= 0) {
					clearInterval(interval);
					alert("Time's up! Your score is " + score);
					document.getElementById("timer").innerHTML = "10";
					document.getElementById("startBtn").innerHTML = "Start Game!";
					document.getElementById("clickBtn").disabled = true;
				}
			}, 1000);

			document.getElementById("startBtn").innerHTML = "Restart Game!";
			document.getElementById("clickBtn").disabled = false;
			document.getElementById("score").innerHTML = "";
			timer = 10;
			score = 0;
		});

		document.getElementById("startBtn").addEventListener("mouseover", () => {
			document.getElementById("startBtn").style.backgroundColor = "#FFFF00";
		});

		document.getElementById("startBtn").addEventListener("mouseleave", () => {
			document.getElementById("startBtn").style.backgroundColor = "#FF0000";
		});

		document.getElementById("clickBtn").addEventListener("dblclick", () => {
			score = score - 1;
			document.getElementById("score").innerHTML = score;
		});

		document.getElementById("clickBtn").addEventListener("mouseenter", () => {
			document.getElementById("clickBtn").style.fontSize = "24px";
		});

		document.getElementById("clickBtn").addEventListener("mouseleave", () => {
			document.getElementById("clickBtn").style.fontSize = "20px";
		});

	</script>

	<script>
		let button = document.getElementById("clickBtn");
		let clicks = 0;
		button.onclick = function() {
			clicks += 1;
			button.innerHTML = "Click Me! " + clicks;
		};
	</script>

</body>
</html>

<!--<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fitness Band</title>
</head>
<link href="https://fonts.googleapis.com/css?family=Baloo+Bhai&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
<style>
    /* CSS Reset */
    body {
        font-family: 'Baloo Bhai', cursive;
        color: white;
        margin: 0px;
        padding: 0px;
        background: url('https://cdn.pixabay.com/photo/2017/07/21/09/35/muscles-2525200_960_720.jpg');
        background-size: cover;
        
    }

    .left {
        display: inline-block;
        /* border: 2px solid red; */
        position: absolute;
        left: 60px;
        top: 20px;
    }

    .left img {
        width: 200px;
        filter: invert(100%);
    }

    .left div {
        line-height: 19px;
        font-size: 26px;
        text-align: center;
        color: red;
    }

    .mid {
        display: block;
        width: 36%;
        margin: 29px auto;
        /* border: 2px solid green; */
        color: red;
       
    }

    .right {
        position: absolute;
        right: 34px;
        top: 43px;
        display: inline-block;
        /* border: 2px solid yellow; */
    }

    .navbar {
        display: inline-block;
    }

    .navbar li {
        display: inline-block;
        font-size: 25px;
    }

    .navbar li a {
        color: rgb(234, 0, 0);
        text-decoration: none;
        padding: 34px 23px;

    }

    .navbar li a:hover,
    .navbar li a.active {
        text-decoration: none;
        color: red;

    }

    .btn {
        font-family: 'Baloo Bhai', cursive;
        margin: 0px 9px;
        background-color: black;
        color: white;
        padding: 4px 14px;
        border: 2px solid red;
        border-radius: 10px;
        font-size: 20px;
        cursor: pointer;
    }

    .btn:hover {
        background-color: black;
    }

    .container {
        border: 2px solid rgb(235, 51, 51);
        margin: 106px 80px;
        padding: 75px;
        width: 33%;
        border-radius: 28px;
    }

    .form-group input {
        font-family: 'Baloo Bhai', cursive;
        text-align: center;
        display: block;
        width: 508px;
        padding: 1px;
        border: 2px solid black;
        margin: 11px auto;
        font-size: 25px;
        border-radius: 8px;
        color: red;
    }

    .container h1 {
        text-align: center;
        color: black;
    }

    .container button {
        display: block;
        width: 74%;
        margin: 20px auto;
    }
</style>

<body>
    <header class="header">
      
        <div class="left">
            <img src="https://cdn.pixabay.com/photo/2016/05/17/21/56/weight-1399281_960_720.png" alt="">
            <div>Fitness Band</div>
        </div>
     
        <div class="mid">
            <ul class="navbar">
                <li><a href="#" class="active">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Fitness Calculator</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
        </div>

    
        <div class="right">
            <button class="btn">Call Us Now</button>
            <button class="btn">Email Us</button>
        </div>
    </header>
    <div class="container">
        <h1>Join The Best GYM of Raipur Now</h1>
        <form action="noaction.php">
            <div class="form-group">
                <input type="text" name="" placeholder="Enter your Name">
            </div>
            <div class="form-group">
                <input type="text" name="" placeholder="Enter your Age">
            </div>
            <div class="form-group">
                <input type="text" name="" placeholder="Enter your Gender">
            </div>
            <div class="form-group">
                <input type="text" name="" placeholder="Enter your Locality">
            </div>
            <div class="form-group">
                <input type="text" name="" placeholder="Enter your Email Id">
            </div>
            <div class="form-group">
                <input type="text" name="" placeholder="Enter your Phone Number">
            </div>
            <button class="btn">Submit</button>
        </form>
    </div>
</body>

</html>
		-->

