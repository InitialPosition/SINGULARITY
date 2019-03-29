/// @description Draw warning

draw_set_halign(fa_center);
draw_set_font(fnt_mainGame);

if (displayWarning) {
	if (minutes > 1) {
		draw_text_color(view_wport[0] / 2, view_hport[0] / 2 - 100, string(minutes) + " MINUTES TO SINGULARITY", c_white, c_white, c_white, c_white, 1);
	} else {
		draw_text_color(view_wport[0] / 2, view_hport[0] / 2 - 100, string(minutes) + " MINUTE TO SINGULARITY", c_white, c_white, c_white, c_white, 1);
	}
}