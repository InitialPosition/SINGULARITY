/// @description End game dialog

if (!global.paused) {
	audio_stop_sound(snd_rocket_end);
	audio_stop_sound(snd_rocket_start);
	audio_stop_sound(snd_rocket_loop);
	
	scr_setPauseStatus(true);
		
	speed = 0;
	instance_create_layer(0, 0, "PlanetOverlay", obj_quit);
}