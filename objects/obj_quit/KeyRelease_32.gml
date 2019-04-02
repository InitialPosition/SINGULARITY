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

with (obj_missile) {
	if (part_system_exists(missileExhaustPart)) {
		part_system_destroy(missileExhaustPart);
	}
}

room_goto(rm_mainMenu);