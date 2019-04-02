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
			scr_saveSeed(0);
			
			room_goto(rm_gameOptions);
			break;
		case 2:
			room_goto(rm_tutorial);
			break;
		case 3:
			room_goto(rm_options);
			break;
		case 4:
			game_end();
			break;
	}
}