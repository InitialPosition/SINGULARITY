/// @description Destroy instance

if (!okToDestroy) {
	audio_stop_sound(snd_rocket_end);
	audio_stop_sound(snd_rocket_start);
	audio_stop_sound(snd_rocket_loop);
	
	if (audio_is_playing(mus_level)) {
		audio_stop_sound(mus_level);
	}
	
	obj_timer.running = 0;
	global.time = obj_timer.elapsedFrames;
	
	fade = instance_create_layer(0, 0, "Fade", obj_fade);
	fade.target = rm_gameOver;
}