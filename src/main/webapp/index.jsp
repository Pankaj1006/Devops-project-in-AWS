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
