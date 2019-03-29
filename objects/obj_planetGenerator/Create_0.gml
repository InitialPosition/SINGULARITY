/// @description Generate some planets

if (!global.seedSaved) {
	randomize()
	scr_saveSeed(irandom(99999999));
}

random_set_seed(global.savedSeed);

var planetAmount = irandom_range(5, 12);
var shipAmount = irandom_range(1, 4);
var missileAmount = irandom_range(2, 4);
var treasureAmount = irandom_range(10, 20);

if (global.universesVisited >= 3) {
	var treasureAmount = irandom_range(8, 16);
	var missileAmount = irandom_range(4, 7);
	var shipAmount = irandom_range(2, 5);
}
if (global.universesVisited >= 7) {
	var treasureAmount = irandom_range(6, 12);
	var missileAmount = irandom_range(6, 12);
	var shipAmount = irandom_range(4, 8);
}

repeat shipAmount {
	instance_create_layer(irandom_range(1000, room_width - 1000), irandom_range(1000, room_height - 1000), "Instances", obj_hostileShip);
}

var planet;
repeat planetAmount {
	planet = instance_create_layer(irandom_range(1000, room_width - 1000), irandom_range(1000, room_height - 1000), "planets", obj_planet);
	planet.role = choose(0);
}

repeat planetAmount {
	instance_create_layer(irandom_range(1000, room_width - 1000), irandom_range(1000, room_height - 1000), "Instances", obj_missileLauncher);
}

var centerPosX, centerPosY;
i = 0;
repeat treasureAmount {
	centerPosX = irandom_range(1000, room_width - 1000);
	centerPosY = irandom_range(1000, room_height - 1000);
	
	repeat irandom_range(3, 6) {
		var gold = instance_create_layer(centerPosX + irandom_range(-100, 100), centerPosY + irandom_range(-100, 100), "Instances", obj_treasure);
	}
}

instance_create_layer(irandom_range(1000, room_width - 1000), irandom_range(1000, room_height - 1000), "Instances", obj_wormhole);

repeat irandom_range(15, 20) {
	instance_create_layer(irandom_range(1000, room_width - 1000), irandom_range(1000, room_height - 1000), "Instances", obj_asteroids);
}

instance_destroy();