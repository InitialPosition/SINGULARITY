/// @description Don't spawn on top of a planet

if (distance_to_object(instance_nearest(x, y, obj_planet)) <= 100) {
	x = random_range(1000, room_width - 1000);
	y = random_range(1000, room_width - 1000);
}