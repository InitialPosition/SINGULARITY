/// @description Firing

PAUSABLE_OBJECT

if (fire && !locked) {
	locked = 1;
	fire = 0;
	instance_create_layer(x, y, "Instances", obj_missile);
	
	alarm[1] = room_speed * 10;
}