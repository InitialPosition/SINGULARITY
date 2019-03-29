/// @description Fade

if (fadeUp) {
	if (a < 1) {
		a += fadeSpeed;
	} else {
		fadeUp = 0;
		if (instance_exists(obj_blackHole)) {
			with (obj_blackHole) {
				instance_destroy();
			}
		}
		room_goto(target);
	}
} else {
	if (a > 0) {
		a -= fadeSpeed;
	} else {
		instance_destroy();
	}
}