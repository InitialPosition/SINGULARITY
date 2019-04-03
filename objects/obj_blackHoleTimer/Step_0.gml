/// @description Black hole countdown

PAUSABLE_OBJECT

countdown--;

if (countdown <= 0) {
	countdown = room_speed * 60;
	minutes--;
	
	// time out, spawn black hole
	if (minutes <= 0 && room == rm_space) {
		var xx = choose(100, room_width - 100);
		var yy = choose(100, room_height - 100);
		instance_create_layer(xx, yy, "BlackHole", obj_blackHole);
		
		instance_destroy();
	}
	
	displayWarning = 1;
	alarm[0] = 180;
}