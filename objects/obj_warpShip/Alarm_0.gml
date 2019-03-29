/// @description Warp

obj_camera.shakeIntensity = 40;
alarm[1] = 15;
visible = false;

audio_play_sound(snd_warp2, 1, 0);

if (file_exists(working_directory + "save.sdf")) {
	file_delete(working_directory + "save.sdf");
}
if (file_exists(working_directory + "world.sdf")) {
	file_delete(working_directory + "world.sdf");
}

instance_create_layer(0, 0, "Fade", obj_fade);