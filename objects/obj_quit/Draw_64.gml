/// @description Draw confirmation dialog

draw_set_halign(fa_center);
draw_set_font(fnt_mainGame);

draw_sprite_ext(spr_shopBg, 0, 960, 600, 25, 25, 0, c_white, 1);

draw_text_color(view_wport[0] / 2, 450, "DO YOU REALLY WANT TO QUIT?", c_white, c_white, c_white, c_white, 1);
draw_text_color(view_wport[0] / 2, 550, "[ SPACE ] - YES", c_white, c_white, c_white, c_white, 1);
draw_text_color(view_wport[0] / 2, 600, "[ ESCAPE ] - NO", c_white, c_white, c_white, c_white, 1);