/// @description Delete files, end game

with (obj_blackHoleTimer) {
	instance_destroy();
}

with (obj_blackHole) {
	instance_destroy();
}

with (obj_ship) {
	okToDestroy = 1;
	instance_destroy();
}

room_goto(rm_mainMenu);