randomize();
scr_createParticles();

window_set_cursor(cr_none);

global.savedSeed = 0;
global.seedSaved = 0;

global.carryFuel = -1;
global.carryHP = -1;
global.carryPointer = -1;

global.coins = 0;
global.cargo = 0;

global.planetsVisited = 0;
global.universesVisited = 0;

if (file_exists(working_directory + "save.sdf")) {
	file_delete(working_directory + "save.sdf");
}
if (file_exists(working_directory + "world.sdf")) {
	file_delete(working_directory + "world.sdf");
}

if (file_exists(working_directory + "options.sdf")) {
	scr_loadOptions();
} else {
	global.musicLvl = 0.5;
	global.sfxLvl = 0.5;
	global.fullscreen = 1;
	scr_saveOptions();
}

window_set_fullscreen(global.fullscreen);

audio_group_load(audiogroup_default);
audio_group_load(audiogroup_sfx);
audio_group_set_gain(audiogroup_default, global.musicLvl, 0);
audio_group_set_gain(audiogroup_sfx, global.sfxLvl, 0);

global.nebulaColorScheme = 255;

global.paused = 0;
#macro PAUSABLE_OBJECT if (global.paused) { exit; }

room_goto(rm_mainMenu);