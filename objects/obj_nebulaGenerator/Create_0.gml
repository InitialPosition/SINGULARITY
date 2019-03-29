/// @description Generate initial nebulas

initAmount = irandom_range(20, 30);

repeat(initAmount) {
	instance_create_layer(random_range(-50, room_width + 50), random_range(50, room_height + 50), "Nebula", obj_nebula)
}
