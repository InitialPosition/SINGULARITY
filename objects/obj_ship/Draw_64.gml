/// @description GUI

draw_set_font(fnt_mainGame);
draw_set_halign(fa_right);

draw_text_color(view_wport[0] - 50, 50, "HEALTH: " + string(round(global.hp)) + "%", c_white, c_white, c_white, c_white, 1);
draw_text_color(view_wport[0] - 50, 80, "FUEL: " + string(round(global.fuel)) + "%", c_white, c_white, c_white, c_white, 1);
draw_text_color(view_wport[0] - 50, 130, "CARGO: " + string(global.cargo) + "%", c_white, c_white, c_white, c_white, 1);
draw_text_color(view_wport[0] - 50, 180, "AMMO: " + string(global.ammo), c_white, c_white, c_white, c_white, 1);

if (missileAlert) {
	draw_text_color(view_wport[0] - 48, 232, "MISSILE ALERT!", c_maroon, c_maroon, c_maroon, c_maroon, 1);
	draw_text_color(view_wport[0] - 50, 230, "MISSILE ALERT!", c_red, c_red, c_red, c_red, 1);
}

draw_set_halign(fa_center);
if (showOOBWarning) {
	draw_text_color(view_wport[0] / 2, view_hport[0] / 2, "LEAVING SAFE ZONE! TURN AROUND!", c_red, c_red, c_red, c_red, 1);
}