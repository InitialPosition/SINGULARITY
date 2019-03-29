/// @description Draw Shop interface

draw_set_font(fnt_mainGame);
draw_set_halign(fa_left);

draw_sprite_ext(spr_shopBg, 0, 960, 600, 45, 30, 0, c_white, 1);

draw_text_color(500, 350, title, c_white, c_white, c_white, c_white, 1);

for (i = 0; i < shopItems; i++) {
	draw_text_color(500, 450 + (i * 50), desc[i], c_white, c_white, c_white, c_white, 1);
	draw_text_color(900, 450 + (i * 50), price[i], c_white, c_white, c_white, c_white, 1);
}

draw_text_color(500, 750, back2, c_white, c_white, c_white, c_white, 1);
draw_text_color(500, 780, back, c_white, c_white, c_white, c_white, 1);
draw_text_ext_color(1100, 560, info[obj_shopSelector.selection], 30, 500, c_white, c_white, c_white, c_white, 1);

draw_text_color(1100, 350, "COINS: " + string(global.coins), c_white, c_white, c_white, c_white, 1);
draw_text_color(1100, 380, "CARGO: " + string(global.cargo) + "%", c_white, c_white, c_white, c_white, 1);
draw_text_color(1100, 440, "HEALTH: " + string(round(global.hp)) + "%", c_white, c_white, c_white, c_white, 1);
draw_text_color(1100, 470, "FUEL: " + string(round(global.fuel)) + "%", c_white, c_white, c_white, c_white, 1);