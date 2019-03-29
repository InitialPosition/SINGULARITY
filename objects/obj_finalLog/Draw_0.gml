/// @description Draw log

draw_set_halign(fa_center);
draw_set_font(fnt_mainGame);

for (i = 0; i < counter + 1; i++) {
	draw_text_color(room_width / 2, (room_height / 2 + (i * 35)) - counter * 20, copy[i], c_white, c_white, c_white, c_white, 1);
}