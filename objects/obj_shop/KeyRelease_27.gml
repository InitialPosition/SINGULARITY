/// @description Back to space

with (obj_asteroids) {
	speed = savedSpeed;
}

with (obj_missile) {
	speed = savedSpeed;
}

with (obj_nebula) {
	speed = savedSpeed;
}

with (obj_hostileShip) {
	speed = savedSpeed;
}

global.paused = 0;

with (obj_shopSelector) {
	instance_destroy();
}

instance_destroy();
