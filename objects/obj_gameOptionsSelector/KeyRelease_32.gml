/// @description Handle input

if (!selected) {
	selected = 1;
	
	switch (selection) {
		case 0:
			editMode = editMode == 0 ? 1 : 0;
			
			selected = 0;
			break;
		case 2:
			var finalSeed = 0;
			
			var i;
			for (i = 0; i < string_length(obj_gameOptions.tempSeed); i++) {
				finalSeed += string_ord_at(obj_gameOptions.tempSeed, i) * 347;
			}
			
			// handle empty seed
			if (finalSeed == 0) {
				finalSeed = irandom(999999999);
			}
			
			scr_saveSeed(finalSeed);
			
			audio_stop_all();
			audio_play_sound(snd_startGame, 1, 0);
				
			var fade = instance_create_layer(0, 0, "Fade", obj_fade);
			fade.target = rm_intro;
			break;
	}
}