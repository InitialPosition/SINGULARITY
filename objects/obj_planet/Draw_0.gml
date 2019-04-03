/// @description Draw Planet

draw_sprite_ext(sprPlanetBase, 0, x, y, planetScale, planetScale, 0, planetColor, 1);

if (hasNoise) {
	draw_sprite_ext(sprPlanetNoise, 0, x, y, planetScale, planetScale, 0, planetColor, 0.4);
}
if (hasCracks) {
	draw_sprite_ext(sprPlanetCracks, 0, x, y, planetScale, planetScale, 0, planetColor, 1);
}
if (hasBuilding) {
	draw_sprite_ext(sprPlanetBuilding, 0, x, y, planetScale, planetScale, 0, planetColor, 1);
}
if (hasOtherCracks) {
	draw_sprite_ext(sprPlanetCracks2, 0, x, y, planetScale, planetScale, 0, planetColor, 1);
}
if (hasAntenna) {
	draw_sprite_ext(sprPlanetBuilding2, 0, x, y, planetScale, planetScale, 0, planetColor, 1);
}
if (hasClouds) {
	draw_sprite_ext(sprPlanetClouds, 0, x, y, planetScale, planetScale, 0, cloudColor, 0.6);
}
if (hasRing) {
	draw_sprite_ext(sprPlanetRing, 0, x, y, planetScale, planetScale, ringAlignment, ringColor, 1);
}