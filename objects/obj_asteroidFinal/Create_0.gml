/// @description Set up asteroid

sprite_index = choose(spr_asteroid1, spr_asteroid2, spr_asteroid3);

image_xscale = irandom_range(3, 5);
image_yscale = image_xscale;

turnSpeed = random_range(-3, 3);