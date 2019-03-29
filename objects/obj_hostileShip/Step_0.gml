/// @description Homing Rocket Code

PAUSABLE_OBJECT

motion_add(point_direction(x, y, targetX, targetY), maxSpeed);

if (distance_to_point(targetX, targetY) < 50) {
	targetX = irandom_range(400, room_width - 400);
	targetY = irandom_range(400, room_height - 400);
}

if (speed > maxFlySpeed) {
	speed = maxFlySpeed;
}

image_angle = direction;

part_emitter_region(missileExhaustPart, missileExhaustPartEmit, x - lengthdir_x(12, image_angle), x - lengthdir_x(24, image_angle), y - lengthdir_y(12, image_angle), y - lengthdir_y(24, image_angle), ps_shape_rectangle, ps_distr_invgaussian);