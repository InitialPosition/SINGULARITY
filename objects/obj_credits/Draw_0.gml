/// @description Draw credits

draw_set_halign(fa_center);
draw_set_font(fnt_mainGame);

if (drawCredits) {
	draw_sprite(spr_logo, 0, room_width / 2 - 250, room_height / 2 - 150 - scrollOffset);
	
	draw_text_color(room_width / 2, room_height / 2 + 600 - scrollOffset, "PROGRAMMING: SYRAPT0R", c_white, c_white, c_white, c_white, 1);
	draw_text_color(room_width / 2, room_height / 2 + 650 - scrollOffset, "GRAPHICS: SYRAPT0R", c_white, c_white, c_white, c_white, 1);
	draw_text_color(room_width / 2, room_height / 2 + 700 - scrollOffset, "SOUNDS: SYRAPT0R", c_white, c_white, c_white, c_white, 1);
	draw_text_color(room_width / 2, room_height / 2 + 750 - scrollOffset, "MUSIC: SYRAPT0R", c_white, c_white, c_white, c_white, 1);
	draw_text_color(room_width / 2, room_height / 2 + 800 - scrollOffset, "STORY: SYRAPT0R", c_white, c_white, c_white, c_white, 1);
	draw_text_color(room_width / 2, room_height / 2 + 850 - scrollOffset, "POINTLESS CREDITS: SYRAPT0R", c_white, c_white, c_white, c_white, 1);
	draw_text_color(room_width / 2, room_height / 2 + 1000 - scrollOffset, "THANK YOU FOR PLAYING.", c_white, c_white, c_white, c_white, 1);
}