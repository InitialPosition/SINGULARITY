/// @description Set up strings

caption = "YOU DIED";
visits = "YOU VISITED ";

if (global.universesVisited == 1) {
	uni = " UNIVERSE";
} else {
	uni = " UNIVERSES";
}

if (global.planetsVisited == 1) {
	planets = "PLANET";
} else {
	planets = " PLANETS";
}

// calculate times
frames = global.time;

minutes = 0;
seconds = 0;
while (frames > 60) {
	frames -= 60;
	seconds += 1;
	if (seconds > 59) {
		seconds = 0;
		minutes += 1;
	}
}

if (seconds < 10) {
	seconds = "0" + string(seconds);
}
if (minutes < 10) {
	minutes = "0" + string(minutes);
}

alarm[0] = 360;