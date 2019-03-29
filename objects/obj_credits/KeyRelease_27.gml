/// @description Go to main menu

if (!instance_exists(obj_fade)) {
	audio_stop_sound(mus_end);
	
	var fade = instance_create_layer(0, 0, "Fade", obj_fade);
	fade.target = rm_mainMenu;
}