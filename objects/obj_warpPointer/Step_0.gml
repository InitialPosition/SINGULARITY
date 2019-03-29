/// @description Point to nearest planet

nearestPlanet = instance_nearest(x, y, obj_wormhole);
move_towards_point(nearestPlanet.x, nearestPlanet.y, 0);

image_angle = direction;

x = obj_ship.x;
y = obj_ship.y;

planetDistance = distance_to_object(nearestPlanet);
if (planetDistance < fadeDistance) {
	image_alpha = distance_to_object(nearestPlanet) / fadeDistance;
}