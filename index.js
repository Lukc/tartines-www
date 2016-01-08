
var start = new Date("2015-12-06T00:00:00");

var hexTime = function(time) {
	var totalSeconds = time / 1000;

	var secondsPerDay = 60 * 60 * 24;
	var ticksPerDay = 16 * 16 * 16 * 16;

	var hexTime =
		Math.floor(totalSeconds / (secondsPerDay / ticksPerDay));

	var hexString = hexTime.toString(16).toUpperCase();

	var l = hexString.length;

	if (l > 4)
	{
		hexString = hexString.replace(/....$/, function(n) {
			return "." + n
		})
	}

	return hexString;
}

var update = function() {
	var now = new Date();
	var diff = now - start;

	document.getElementById("trueCounter").innerHTML =
		hexTime(diff);
}

window.onload = function() {
	update();
	setInterval(update, 100);
}

