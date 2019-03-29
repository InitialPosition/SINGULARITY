/// @description Draw stuff

draw_self();

if (inPlanetProximity) {
	draw_set_halign(fa_center);
	draw_set_font(fnt_mainGame);
	draw_text_color(x, y + 50, "[ SPACE ] - LAND", c_white, c_white, c_white, c_white, flashAlpha);
}

if (inWormholeProximity) {
	draw_set_halign(fa_center);
	draw_set_font(fnt_mainGame);
	draw_text_color(x, y + 50, "[ SPACE ] - WARP", c_white, c_white, c_white, c_white, flashAlpha);
}