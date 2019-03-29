/// @description Black hole countdown

PAUSABLE_OBJECT

countdown--;

if (countdown <= 0) {
	countdown = room_speed * 60;
	minutes--;
	
	// time out, spawn black hole
	if (minutes <= 0 && room == rm_space) {
		instance_create_layer(irandom_range(1000, room_width - 1000), irandom_range(1000, room_height - 1000), "BlackHole", obj_blackHole);
		instance_destroy();
	}
	
	displayWarning = 1;
	alarm[0] = 180;
}