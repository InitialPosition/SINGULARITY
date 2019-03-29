/// @description Draw Arrows

if (showLeftArrow) {
	draw_sprite_ext(spr_nextPlanet, 0, view_xport[0] + 250, view_hport[0] / 2, 3, 3, 180, c_white, 1);
}

if (showRightArrow) {
	draw_sprite_ext(spr_nextPlanet, 0, view_xport[0] + (view_wport[0] - 250), view_hport[0] / 2, 3, 3, 0, c_white, 1);
}