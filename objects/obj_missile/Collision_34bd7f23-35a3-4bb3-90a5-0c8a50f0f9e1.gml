/// @description Destroy asteroid to reveal gold

repeat irandom_range(1, 4) {
	instance_create_layer(other.x + random_range(-10, 10), other.y + random_range(-10, 10), "Instances", obj_treasure);
}

with (other) {
	instance_destroy();
}

instance_destroy();