/// @description Destroy particles

part_system_destroy(missileExhaustPart);

var explosion = instance_create_layer(x, y, "Instances", obj_explosion);
explosion.explosionColor = make_color_hsv(irandom(20), irandom_range(180, 255), 255);