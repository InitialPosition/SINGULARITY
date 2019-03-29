/// @description Fill cargo

global.cargo += irandom_range(2, 5);

audio_play_sound(choose(snd_pickup1, snd_pickup2, snd_pickup3, snd_pickup4, snd_pickup5, snd_pickup6, snd_pickup7), 1, 0);

if (global.cargo > 100) {
	global.cargo = 100;
}

with (other) {
	instance_destroy();
}