/// @description Set up graphics

sprite_index = spr_planet_base;

image_xscale = 20;
image_yscale = 20;

while (place_meeting(x, y, obj_planet)) {
	x = irandom_range(1000, room_width - 1000);
	y = irandom_range(1000, room_height - 1000);
}

planetScale = irandom_range(7, 10);

var randColor = irandom(255);
planetColor = make_color_hsv(randColor, 180, 255);
cloudColor = make_color_hsv(randColor, 140, 255);
ringColor = make_color_hsv(randColor, 200, 255);

hasRing = choose(0, 1);
hasClouds = choose(0, 1);
hasNoise = choose(0, 1);
hasCracks = choose(0, 1);
hasOtherCracks = choose(0, 1);
hasBuilding = choose(0, 1);
hasAntenna = choose(0, 1);

ringAlignment = irandom_range(-10, 10);

visited = 0;

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