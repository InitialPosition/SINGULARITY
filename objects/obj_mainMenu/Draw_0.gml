/// @description Draw menu

draw_set_halign(fa_center);
draw_set_font(fnt_mainGame);

draw_text_color(room_width / 2, 600, option[0], c_white, c_white, c_white, c_white, 1);
draw_text_color(room_width / 2, 650, option[1], c_white, c_white, c_white, c_white, 1);
draw_text_color(room_width / 2, 700, option[2], c_white, c_white, c_white, c_white, 1);
draw_text_color(room_width / 2, 750, option[3], c_white, c_white, c_white, c_white, 1);
draw_text_color(room_width / 2, 800, option[4], c_white, c_white, c_white, c_white, 1);

draw_set_halign(fa_right);
draw_set_font(fnt_mainGameSmall);

draw_text_color(room_width - 60, room_height - 60, "v. 0 . 1 . 2 . 2 beta", c_white, c_white, c_white, c_white, 1);