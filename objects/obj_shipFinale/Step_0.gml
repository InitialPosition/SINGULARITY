/// @description Movement and behaviour

// update particle system position
part_emitter_region(shipExhaustPart, shipExhaustPartEmit, x - lengthdir_x(24, image_angle), x - lengthdir_x(32, image_angle), y - lengthdir_y(24, image_angle), y - lengthdir_y(32, image_angle), ps_shape_rectangle, ps_distr_invgaussian);

if (!locked) {
if (keyboard_check(accelerate) && fuel > 0) {
	part_emitter_burst(shipExhaustPart, shipExhaustPartEmit, global.part_ship_exhaust, 2);
    if (speed < moveSpeedMax) {
        speed += acceleration;
    } else {
        speed = moveSpeedMax;
    }
	
	if (!startedToPress) {
		startedToPress = 1;
		audio_play_sound(snd_rocket_start, 1, 0);
	}
	
	if (startedToPress && !audio_is_playing(snd_rocket_start) && !loopPlaying) {
		loopPlaying = 1;
		audio_play_sound(snd_rocket_loop, 1, 1);
	}
	
	//fuel -= fuelConsumption;
} else {
    if (speed > 0 && fuel > 0) {
        speed /= deccelerateFactor;
        if (speed < stopThreshold) {
            speed = 0;
        }
    }
}

turnFactor = turnSpeed * keyboard_check(turnLeft) - turnSpeed * keyboard_check(turnRight);
if (fuel > 0) {
	direction += turnFactor;
}

image_angle = direction;
}		// END LOCKED
else {
	speed = 0;
	audio_stop_sound(snd_rocket_start);
	audio_stop_sound(snd_rocket_loop);
	
	if (!finalSound) {
		finalSound = 1;
		audio_play_sound(snd_rocket_end, 1, 0);
	}
}
// oob damage
if (y > room_height + 100 ||
	y < -100) {
		hp = 0;
}
	
// die from hp
if (hp <= 0) {
	hp = 0;
	instance_destroy();
}