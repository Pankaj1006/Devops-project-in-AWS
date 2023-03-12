<!DOCTYPE html>
<html>
<head>
	<title>Buggy Game</title>
	<style>
		body {
			background-color: #F00;
			color: #FFF;
			font-size: 30px;
		}

		button {
			background-color: #00F;
			color: #000;
			font-size: 24px;
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
	<p id="timer">0</p>
	<button id="clickBtn">Click Me!</button>
	<p id="score"></p>

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
			document.getElementById("startBtn").style.backgroundColor = "#0F0";
		});

		document.getElementById("startBtn").addEventListener("mouseleave", () => {
			document.getElementById("startBtn").style.backgroundColor = "#00F";
		});

		document.getElementById("clickBtn").addEventListener("dblclick", () => {
			score = score - 1;
			document.getElementById("score").innerHTML = score;
		});

		document.getElementById("clickBtn").addEventListener("mouseenter", () => {
			document.getElementById("clickBtn").style.fontSize = "36px";
		});

		document.getElementById("clickBtn").addEventListener("mouseleave", () => {
			document.getElementById("clickBtn").style.fontSize = "24px";
		});

	</script>

</body>
</html>
