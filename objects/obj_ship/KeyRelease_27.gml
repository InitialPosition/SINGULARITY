/// @description End game dialog

if (!global.paused) {
	audio_stop_sound(snd_rocket_end);
	audio_stop_sound(snd_rocket_start);
	audio_stop_sound(snd_rocket_loop);
	
	global.paused = 1;
	obj_timer.running = 0;
	
	with (obj_asteroids) {
		speed = 0;
	}
		
	with (obj_missile) {
		savedSpeed = speed;
		speed = 0;
	}
		
	with (obj_nebula) {
		savedSpeed = speed;
		speed = 0;
	}
		
	with (obj_hostileShip) {
		savedSpeed = speed;
		speed = 0;
	}
		
	speed = 0;
	instance_create_layer(0, 0, "PlanetOverlay", obj_quit);
}