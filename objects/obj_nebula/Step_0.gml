/// @description Destroy if OOB

PAUSABLE_OBJECT

if (x < -OOBM || x > room_width + OOBM || y < -OOBM || y > room_height + OOBM) {
	killSwitch = 1;
}

if (!killSwitch) {
	if (imgA < maxAlpha) {
		imgA += imgAF;
	} else {
		imgA = maxAlpha;
	}
} else {
	if (!spawned) {
		spawned = 1;
		spawnX = random_range(-50, room_width + 50);
		spawnY = random_range(-50, room_height + 50);
		instance_create_layer(spawnX, spawnY, "Nebula", obj_nebula);
	}
	
	if (imgA > 0) {
		imgA -= imgAF;
	} else {
		instance_destroy()
	}
}