<!DOCTYPE html>
<html>
<head>
	<title>Buggy Game</title>
</head>
<body>

	<h1>Buggy Game</h1>

	<p>Click the button as many times as you can in 10 seconds!</p>

	<button id="startBtn">Start</button>
	<button id="clickBtn">Click Me!</button>

	<p id="score">0</p>

	<script>
		let timer = 10;
		let score = 0;

		document.getElementById("clickBtn").addEventListener("click", () => {
			score++;
			document.getElementById("score").innerHTML = score;
		});

		document.getElementById("startBtn").addEventListener("click", () => {
			let interval = setInterval(() => {
				timer--;
				document.getElementById("timer").innerHTML = timer;

				if (timer <= 0) {
					clearInterval(interval);
					alert("Time's up! Your score is " + score);
				}
			}, 1000);
		});
	</script>

</body>
</html>
