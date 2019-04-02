var isPausing = argument0;

if (isPausing) {
	global.paused = 1;
	obj_timer.running = 0;
	
	with (obj_asteroids) {
		speed = 0;
	}
		
	with (obj_missile) {
		savedSpeed = speed;
		speed = 0;
		
		savedBlink = alarm[0];
	}
		
	with (obj_nebula) {
		savedSpeed = speed;
		speed = 0;
	}
		
	with (obj_hostileShip) {
		savedSpeed = speed;
		speed = 0;
	}
} else {
	with (obj_asteroids) {
		speed = savedSpeed;
	}
	
	with (obj_missile) {
		speed = savedSpeed;
		alarm[0] = savedBlink;
	}
	
	with (obj_nebula) {
		speed = savedSpeed;
	}
	
	with (obj_hostileShip) {
		speed = savedSpeed;
	}

	global.paused = 0;
}