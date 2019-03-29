/// @description Set up graphics

planetScale = irandom_range(7, 10);
planetColor = make_color_hsv(irandom(255), 255, 255);

hasRing = choose(0, 1);
hasClouds = choose(0, 1);
hasNoise = choose(0, 1);
hasCracks = choose(0, 1);
hasOtherCracks = choose(0, 1);
hasBuilding = choose(0, 1);
hasAntenna = choose(0, 1);

ringAlignment = irandom_range(-10, 10);

visited = 0;

sprite_index = spr_planet_base;
image_xscale = planetScale;
image_yscale = image_xscale;

minPlanetDistance = 100;

xx = x;
x -= 10000;

if (distance_to_object(instance_nearest(xx, y, obj_planet)) <= minPlanetDistance) {
	x = random_range(1000, room_width - 1000);
	y = random_range(1000, room_width - 1000);
} else {
	x = xx;
}