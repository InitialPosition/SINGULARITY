/// @description Back to menu

if (obj_optionsSelector.selection = 2) {
	global.fullscreen = 1 - global.fullscreen;
	window_set_fullscreen(global.fullscreen);
}

if (obj_optionsSelector.selection = 3) {
	scr_saveOptions();
	room_goto(rm_mainMenu);
}