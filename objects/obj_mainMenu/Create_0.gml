/// @description Setup
global.coins = 50;
global.cargo = 0;
global.planetsVisited = 0;
global.universesVisited = 1;
global.hull = 0;
global.fuel = 100;
global.hp = 100;
global.paused = 0;

global.seedSaved = 0;

option[0] = "START GAME";
option[1] = "ENDLESS MODE";
option[2] = "TUTORIAL";
option[3] = "OPTIONS";
option[4] = "QUIT";

if (audio_is_playing(mus_level)) {
	audio_stop_sound(mus_level);
}
if (!audio_is_playing(mus_mainMenu)) {
	audio_play_sound(mus_mainMenu, 1, 1);
}

if (instance_exists(obj_timer)) {
	with (obj_timer) {
		instance_destroy();
	}
}

with (obj_treasure) {
	instance_destroy();
}