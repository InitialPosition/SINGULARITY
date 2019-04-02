/// @description Draw Planet

draw_sprite_ext(spr_planet_base, 0, x, y, planetScale, planetScale, 0, planetColor, 1);

if (hasNoise) {
	draw_sprite_ext(spr_planet_noise, 0, x, y, planetScale, planetScale, 0, planetColor, 0.4);
}
if (hasBuilding) {
	draw_sprite_ext(spr_planet_building, 0, x, y, planetScale, planetScale, 0, planetColor, 1);
}
if (hasCracks) {
	draw_sprite_ext(spr_planet_cracks, 0, x, y, planetScale, planetScale, 0, planetColor, 1);
}
if (hasOtherCracks) {
	draw_sprite_ext(spr_planet_crack2, 0, x, y, planetScale, planetScale, 0, planetColor, 1);
}
if (hasAntenna) {
	draw_sprite_ext(spr_planet_antenna, 0, x, y, planetScale, planetScale, 0, planetColor, 1);
}
if (hasClouds) {
	draw_sprite_ext(spr_planet_clouds, 0, x, y, planetScale, planetScale, 0, cloudColor, 0.6);
}
if (hasRing) {
	draw_sprite_ext(spr_planet_ring, 0, x, y, planetScale, planetScale, ringAlignment, ringColor, 1);
}