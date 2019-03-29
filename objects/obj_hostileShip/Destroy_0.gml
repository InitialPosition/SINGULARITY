/// @description Destroy particles

part_system_destroy(missileExhaustPart);

repeat goldCollected {
	instance_create_layer(x + random_range(-70, 70), y + random_range(-70, 70), "Instances", obj_treasure);
}