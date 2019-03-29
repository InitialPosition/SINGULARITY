/// @description Go to planets / warp

if (inPlanetProximity) {
	if (!global.paused) {
		audio_stop_sound(snd_rocket_end);
		audio_stop_sound(snd_rocket_start);
		audio_stop_sound(snd_rocket_loop);
		
		startedToPress = 0;
		loopPlaying = 0;
		
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
		
		var nearestPlanet = instance_nearest(x, y, obj_planet);
		if (!nearestPlanet.visited) {
			nearestPlanet.visited = 1;
			global.planetsVisited++;
		}
		
		speed = 0;
		instance_create_layer(0, 0, "PlanetOverlay", obj_shop);
	}
}

if (inWormholeProximity) {
	if (!global.paused) {
		obj_timer.running = 0;
	
		global.carryFuel = global.fuel;
		global.carryHP = global.hp;
	
		audio_stop_sound(snd_rocket_end);
		audio_stop_sound(snd_rocket_start);
		audio_stop_sound(snd_rocket_loop);
	
		var ship = instance_create_layer(x, y, "PlanetOverlay", obj_warpShip);
		ship.image_angle = image_angle;
		okToDestroy = 1;
		instance_destroy();
	}
}