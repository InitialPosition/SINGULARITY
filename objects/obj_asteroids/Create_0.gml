/// @description Set appearance

sprite_index = choose(spr_asteroid1, spr_asteroid2, spr_asteroid3);

image_xscale = irandom_range(3, 5);
image_yscale = image_xscale;

turnSpeed = random_range(-3, 3);

direction = random(359);
speed = irandom_range(1, 3);

savedSpeed = speed;

if (distance_to_object(obj_ship) < 300) {
	instance_destroy();
}