/// @description Movement and behaviour

PAUSABLE_OBJECT

// update particle system position
part_emitter_region(shipExhaustPart, shipExhaustPartEmit, x - lengthdir_x(24, image_angle), x - lengthdir_x(32, image_angle), y - lengthdir_y(24, image_angle), y - lengthdir_y(32, image_angle), ps_shape_rectangle, ps_distr_invgaussian);

if (keyboard_check(accelerate) && global.fuel > 0) {
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
	
	global.fuel -= fuelConsumption;
} else {
    if (speed > 0 && global.fuel > 0) {
        speed /= deccelerateFactor;
        if (speed < stopThreshold) {
            speed = 0;
        }
    }
}

turnFactor = turnSpeed * keyboard_check(turnLeft) - turnSpeed * keyboard_check(turnRight);
if (global.fuel > 0) {
	image_angle += turnFactor;
	
	if (keyboard_check(accelerate)) {
		direction = image_angle;
	}
}

// 2 pi clock
flashSine += 0.05;
if (flashSine >= 6.28) {
	flashSine -= 6.28;
}

flashAlpha = abs(sin(flashSine));

// check if in planet proximity
if (place_meeting(x, y, obj_planet)) {
	inPlanetProximity = 1;
} else {
	inPlanetProximity = 0;
}

// check if in wormhole proximity
if (place_meeting(x, y, obj_wormhole)) {
	inWormholeProximity = 1;
} else {
	inWormholeProximity = 0;
}

// test for missile launchers
if (instance_exists(obj_missileLauncher)) {
	nextMissileLauncher = instance_nearest(x, y, obj_missileLauncher);
	if (distance_to_object(nextMissileLauncher) < nextMissileLauncher.activationRadius) {
		nextMissileLauncher.alarm[0] = 1;
	} else {
		nextMissileLauncher.fire = 0;
	}
}

missileAlert = instance_exists(obj_missile) ? 1 : 0;

// oob warning
if (x > room_width - 800 ||
	x < 800 ||
	y > room_height - 800 ||
	y < 800) {
		showOOBWarning = 1;
} else {
	showOOBWarning = 0;
}

// oob damage
if (x > room_width + 100 ||
	x < -100 ||
	y > room_height + 100 ||
	y < -100) {
		global.hp -= 0.1;
		if (global.fuel <= 0) {
			global.hp = 0;
		}
	}
	
// die from hp
if (global.hp <= 0) {
	global.hp = 0;
	instance_destroy();
}