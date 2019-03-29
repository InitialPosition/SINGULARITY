/// @description Purchase

if (!selected) {
	selected = 1;
	
	global.coins = 0;
	global.carryFuel = -1;
	global.carryHP = -1;
	global.carryPointer = -1;
	global.storyMode = 0;
	global.ammo = 0;
			
	switch (selection) {
		case 0:
			global.storyMode = 1;
		case 1:	
			audio_stop_all();
			audio_play_sound(snd_startGame, 1, 0);
			
			var fade = instance_create_layer(0, 0, "Fade", obj_fade);
			fade.target = rm_intro;
			break;
		case 2:
			room_goto(rm_tutorial);
			break;
		case 3:
			room_goto(rm_options);
			break;
		case 4:
			if (file_exists(working_directory + "save.sdf")) {
				file_delete(working_directory + "save.sdf");
			}
			if (file_exists(working_directory + "world.sdf")) {
				file_delete(working_directory + "world.sdf");
			}
	
			game_end();
			break;
	}
}