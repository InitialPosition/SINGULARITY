/// @description Draw debug info

draw_set_halign(fa_left);
draw_text_color(20, 620, "FPS: " + string(fps), c_white, c_white, c_white, c_white, 1);
draw_text_color(20, 650, "FPS (real): " + string(fps_real), c_white, c_white, c_white, c_white, 1);
draw_text_color(20, 680, "Room: " + room_get_name(room), c_white, c_white, c_white, c_white, 1);