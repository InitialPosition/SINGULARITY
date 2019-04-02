/// @description Sound handle

if (!global.paused) {
	startedToPress = 0;
	loopPlaying = 0;
	
	audio_stop_sound(snd_rocket_start);
	audio_stop_sound(snd_rocket_loop);
	
	audio_play_sound(snd_rocket_end, 1, 0);
}