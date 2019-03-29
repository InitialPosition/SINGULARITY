/// @description Set up timer

if (instance_exists(obj_blackHole)) {
	instance_destroy();
}

countdown = 1;
minutes = 4;
if (global.universesVisited > 4) {
	minutes = 3;
}
if (global.universesVisited > 8) {
	minutes = 2;
}

displayWarning = 0;