/// @description Draw options

draw_set_halign(fa_center);
draw_set_font(fnt_mainGame);

if (obj_gameOptionsSelector.editMode) {
	if (tempSeed == "") {
		draw_text_color(room_width / 2, 600, option[0] + "random", c_yellow, c_yellow, c_yellow, c_yellow, 1);
	} else {
		draw_text_color(room_width / 2, 600, option[0] + tempSeed, c_yellow, c_yellow, c_yellow, c_yellow, 1);
	}
} else {
	if (tempSeed == "") {
		draw_text_color(room_width / 2, 600, option[0] + "random", c_white, c_white, c_white, c_white, 1);
	} else {
		draw_text_color(room_width / 2, 600, option[0] + tempSeed, c_white, c_white, c_white, c_white, 1);
	}
}
draw_text_color(room_width / 2, 650, option[1], c_white, c_white, c_white, c_white, 1);