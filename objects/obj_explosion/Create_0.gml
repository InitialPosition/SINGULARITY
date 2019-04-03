/// @description Set up basic behavior

imgA = 1;
imgAFade = 0.05;

growthRate = 0.17;

explosionColor = $FFFFFF;

tookDamage = 0;

startSize = 0;

image_xscale = startSize;
image_yscale = image_xscale;

obj_camera.shake = 1;
obj_camera.shakeIntensity = 10;
obj_camera.alarm[0] = 10;
	
audio_play_sound(choose(snd_explosion1, snd_explosion2, snd_explosion3, snd_explosion4), 1, 0);