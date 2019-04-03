/// @description Camera Shake

obj_camera.shake = 1;
obj_camera.shakeIntensity = 0;

alarm[0] = 180;
alarm[2] = 60;

scale = 0.2;
a = 0;

global.carryPointer = -1;
global.universesVisited++;
global.nebulaColorScheme = irandom(255);

if (global.universesVisited > global.universesTarget) {
	audio_group_set_gain(audiogroup_default, 0, 1200);
}

global.seedSaved = 0;