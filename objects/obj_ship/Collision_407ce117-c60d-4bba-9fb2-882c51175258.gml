/// @description Take damage

baseDamage = irandom_range(8, 16);
global.hp -= round(baseDamage / (round(global.hull / 3) + 1));

with (other) {
	instance_destroy();
}

obj_camera.shake = 1;
obj_camera.shakeIntensity = 10;
obj_camera.alarm[0] = 10;

audio_play_sound(choose(snd_explosion1, snd_explosion2, snd_explosion3, snd_explosion4), 1, 0);