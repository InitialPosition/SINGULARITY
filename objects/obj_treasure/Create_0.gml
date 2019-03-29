/// @description Set up sprite

if (room == rm_finale) {
	instance_destroy();
}

sprite_index = choose(spr_treasure1, spr_treasure2, spr_treasure3, spr_treasure4);
image_xscale = random_range(1, 3);
image_yscale = image_xscale;

index = 0;