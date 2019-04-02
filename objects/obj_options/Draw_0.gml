/// @description Show options

draw_set_font(fnt_mainGame);
draw_set_halign(fa_right);

draw_text_color(room_width / 2, 500, option[0], c_white, c_white, c_white, c_white, 1);
draw_text_color(room_width / 2, 550, option[1], c_white, c_white, c_white, c_white, 1);
draw_text_color(room_width / 2, 600, option[2], c_white, c_white, c_white, c_white, 1);
draw_text_color(room_width / 2, 650, option[3], c_white, c_white, c_white, c_white, 1);

draw_set_halign(fa_left);
draw_text_color(room_width / 2 + 50, 500, string(round(global.musicLvl * 100)) + "%", c_white, c_white, c_white, c_white, 1);
draw_text_color(room_width / 2 + 50, 550, string(round(global.sfxLvl * 100)) + "%", c_white, c_white, c_white, c_white, 1);
if (global.fullscreen) {
	draw_text_color(room_width / 2 + 50, 600, "ON", c_white, c_white, c_white, c_white, 1);
} else {
	draw_text_color(room_width / 2 + 50, 600, "OFF", c_white, c_white, c_white, c_white, 1);
}