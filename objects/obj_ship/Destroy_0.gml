/// @description Destroy instance

with (obj_missile) {
	createExplosion = 0;
	instance_destroy();
}

with (obj_nextPlanet) {
	instance_destroy();
}

with (obj_warpPointer) {
	instance_destroy();
}

with (obj_blackHoleTimer) {
	instance_destroy();
}

with (obj_hostileShip) {
	part_system_destroy(missileExhaustPart);
}

with (obj_missileFriendly) {
	instance_destroy();
}

if (!okToDestroy) {
	audio_stop_sound(snd_rocket_end);
	audio_stop_sound(snd_rocket_start);
	audio_stop_sound(snd_rocket_loop);
	
	if (audio_is_playing(mus_level)) {
		audio_stop_sound(mus_level);
	}
	
	audio_play_sound(snd_explosion1, 1, 0);
	
	obj_timer.running = 0;
	global.time = obj_timer.elapsedFrames;
	
	fade = instance_create_layer(0, 0, "Fade", obj_fade);
	fade.target = rm_gameOver;
}