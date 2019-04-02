/// @description Set up missile

maxSpeed = random_range(0.4, 1);
maxFlySpeed = random_range(10, 12);
target = obj_ship;

notSlowed = 1;

// set up particle system
missileExhaustPart = part_system_create();
missileExhaustPartEmit = part_emitter_create(missileExhaustPart);
part_emitter_region(missileExhaustPart, missileExhaustPartEmit, x + lengthdir_x(6, image_angle), x + lengthdir_x(12, image_angle), y + lengthdir_y(6, image_angle), y + lengthdir_y(12, image_angle), ps_shape_rectangle, ps_distr_invgaussian);
part_emitter_stream(missileExhaustPart, missileExhaustPartEmit, global.part_missile_exhaust, 2);

savedSpeed = 0;

blinkTimer = room_speed * 12;
blinkStarted = 0;
savedBlink = 0;

deathTimer = room_speed * 15;

createExplosion = 1;
blinkSpeed = 8;