/// @description Spawn singularity

var blackhole = instance_create_layer(-1300, 0, "BlackHole", obj_singularity);
blackhole.image_xscale = 100;
blackhole.image_yscale = blackhole.image_xscale;

instance_destroy();