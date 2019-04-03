/// @description Draw new message

draw_set_font(fnt_mainGame);
draw_set_halign(fa_center);

draw_text_color(room_width / 2, room_height / 2 - 25, title, c_white, c_white, c_white, c_white, 1);
draw_text_color(room_width / 2, room_height / 2 + 25, rand, c_white, c_white, c_white, c_white, 1);

if (global.storyMode) {
	draw_text_color(room_width / 2, room_height / 2 + 75, string(global.universesVisited) + " / " + string(global.universesTarget), c_white, c_white, c_white, c_white, 1);
}