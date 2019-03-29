/// @description Homing Rocket Code

if (instance_exists(target)) {
	motion_add(point_direction(x, y, target.x, target.y), maxSpeed);
} else {
	instance_destroy();
}

if (speed > maxFlySpeed) {
	speed = maxFlySpeed;
}

image_angle = direction;

part_emitter_region(missileExhaustPart, missileExhaustPartEmit, x - lengthdir_x(12, image_angle), x - lengthdir_x(24, image_angle), y - lengthdir_y(12, image_angle), y - lengthdir_y(24, image_angle), ps_shape_rectangle, ps_distr_invgaussian);