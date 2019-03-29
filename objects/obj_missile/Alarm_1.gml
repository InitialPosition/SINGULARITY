/// @description Burst particles once tank is empty

alarm[1] = irandom_range(7, 14);

part_emitter_burst(missileExhaustPart, missileExhaustPartEmit, global.part_missile_exhaust, 2);