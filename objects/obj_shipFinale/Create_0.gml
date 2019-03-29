/// @description Set up basic variables

baseSpeedMax = 12;
boostSpeedMax = 24;

fuel = 100;
fuelConsumptionBase = 0.01;
fuelConsumptionBoost = fuelConsumptionBase * 3;
fuelConsumption = fuelConsumptionBase;

hp = 100;

finalSound = 0;

locked = 0;
invincible = 0;

moveSpeedMax = baseSpeedMax;
acceleration = 0.5;
turnSpeed = 3;
deccelerateFactor = 1.2;
stopThreshold = 0.1;

accelerate = ord("W");
turnLeft = ord("A");
turnRight = ord("D");
enterPlanet = vk_space;

startedToPress = 0;
loopPlaying = 0;

showOOBWarning = 0;
inPlanetProximity = 0;
inWormholeProximity = 0;
flashAlpha = 1;
flashSine = 0;
if (instance_exists(obj_missileLauncher)) {
	nextMissileLauncher = instance_nearest(x, y, obj_missileLauncher);
}

// set up particle system
shipExhaustPart = part_system_create();
shipExhaustPartEmit = part_emitter_create(shipExhaustPart);
part_emitter_region(shipExhaustPart, shipExhaustPartEmit, x + lengthdir_x(24, image_angle), x + lengthdir_x(32, image_angle), y + lengthdir_y(24, image_angle), y + lengthdir_y(32, image_angle), ps_shape_rectangle, ps_distr_invgaussian);

// generate camera
if (!instance_exists(obj_camera)) {
	instance_create_layer(x, y, "tech", obj_camera);
}

missileAlert = 0;

if (global.carryFuel != -1) {
	fuel = global.carryFuel;
	global.carryFuel = -1;
}
if (global.carryHP != -1) {
	hp = global.carryHP;
	global.carryHP = -1;
}
if (global.carryPointer != -1) {
	instance_create_layer(x, y, "Instances", obj_warpPointer)
}

okToDestroy = 0;