/// @description Homing Rocket Code

PAUSABLE_OBJECT

if (hasFuel) {
	if (instance_exists(target)) {
		motion_add(point_direction(x, y, target.x, target.y), maxSpeed);
	} else {
		instance_destroy();
	}
	
	if (distance_to_object(target) > 1000) {
		instance_destroy();
	}
}

if (speed > maxFlySpeed) {
	speed = maxFlySpeed;
}

part_emitter_region(missileExhaustPart, missileExhaustPartEmit, x - lengthdir_x(12, image_angle), x - lengthdir_x(24, image_angle), y - lengthdir_y(12, image_angle), y - lengthdir_y(24, image_angle), ps_shape_rectangle, ps_distr_invgaussian);

// angle calculations
if (hasFuel) {
	var rot1 = image_angle;
	image_angle = direction;
	rotDelta = image_angle - rot1;
	
	deathTimer--;
	if (deathTimer <= 0) {
		hasFuel = 0;
		part_emitter_stream(missileExhaustPart, missileExhaustPartEmit, global.part_missile_exhaust, 0);
		alarm[1] = 10;
	}
} else {
	image_angle += rotDelta;
	
	// destroy if out of fuel and OOB
	if (x < -100 || x > room_width + 100 || y < -100 || y > room_height + 100) {
		instance_destroy();
	}
}