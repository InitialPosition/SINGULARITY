/// @description Draw Game Over Screen

draw_set_halign(fa_center);
draw_set_font(fnt_mainGame);

draw_text_color(room_width / 2, 400, caption, c_white, c_white, c_white, c_white, 1);

draw_text_color(room_width / 2, 500, visits + string(global.planetsVisited) + planets, c_white, c_white, c_white, c_white, 1);
draw_text_color(room_width / 2, 550, visits + string(global.universesVisited) + uni, c_white, c_white, c_white, c_white, 1);
draw_text_color(room_width / 2, 600, "TIME SURVIVED: " + string(minutes) + ":" + string(seconds), c_white, c_white, c_white, c_white, 1);