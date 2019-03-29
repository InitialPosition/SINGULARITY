/// @description Fire missile

if (global.ammo > 0) {
	instance_create_layer(x + lengthdir_x(24, direction), y + lengthdir_y(24, direction), "Instances", obj_missileFriendly);
	global.ammo--;
}