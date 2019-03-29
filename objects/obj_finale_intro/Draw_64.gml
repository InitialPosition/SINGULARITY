/// @description Draw message

draw_set_font(fnt_mainGame);
draw_set_halign(fa_center);

draw_text_color(view_wport[0] / 2, view_hport[0] / 2 - 25, message, c_red, c_red, c_red, c_red, 1);
draw_text_color(view_wport[0] / 2, view_hport[0] / 2 + 25, message2, c_red, c_red, c_red, c_red, 1);