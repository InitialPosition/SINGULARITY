/// @description Move camera to follow player

if (instance_exists(obj_ship)) {
	x = lerp(x, obj_ship.x + lengthdir_x(obj_ship.speed * offsetFactor, obj_ship.image_angle), 0.1);
	y = lerp(y, obj_ship.y + lengthdir_y(obj_ship.speed * offsetFactor, obj_ship.image_angle), 0.1);
}

if (instance_exists(obj_warpShip)) {
	x = lerp(x, obj_warpShip.x, 0.1);
	y = lerp(y, obj_warpShip.y, 0.1);
}

if (instance_exists(obj_shipFinale)) {
	x = lerp(x, obj_shipFinale.x + lengthdir_x(obj_shipFinale.speed * offsetFactor, obj_shipFinale.direction), 0.1);
	y = lerp(y, obj_shipFinale.y + lengthdir_y(obj_shipFinale.speed * offsetFactor, obj_shipFinale.direction), 0.1);
}

if (shake) {
	x += irandom_range(-shakeIntensity, shakeIntensity);
	y += irandom_range(-shakeIntensity, shakeIntensity);
}

// set up parallax
camX = camera_get_view_x(view_camera[0])
camY = camera_get_view_y(view_camera[0]);

layer_x("bg_space1", camX * parallaxSpeed1);
layer_x("bg_space2", camX * parallaxSpeed2);
layer_x("bg_space3", camX * parallaxSpeed3);
layer_y("bg_space1", camY * parallaxSpeed1);
layer_y("bg_space2", camY * parallaxSpeed2);
layer_y("bg_space3", camY * parallaxSpeed3);