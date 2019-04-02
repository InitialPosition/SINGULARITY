/// @description Homing Rocket Code

PAUSABLE_OBJECT

if (instance_exists(target)) {
	motion_add(point_direction(x, y, target.x, target.y), maxSpeed);
} else {
	instance_destroy();
}

if (distance_to_object(target) > 1000) {
	instance_destroy();
}

if (speed > maxFlySpeed) {
	speed = maxFlySpeed;
}

part_emitter_region(missileExhaustPart, missileExhaustPartEmit, x - lengthdir_x(12, image_angle), x - lengthdir_x(24, image_angle), y - lengthdir_y(12, image_angle), y - lengthdir_y(24, image_angle), ps_shape_rectangle, ps_distr_invgaussian);

deathTimer--;
if (deathTimer <= 0) {
	instance_destroy();
}

blinkTimer--;
if (blinkTimer <= 0 && !blinkStarted) {
	blinkStarted = 1;
	alarm[0] = 1;
}

image_angle = direction;