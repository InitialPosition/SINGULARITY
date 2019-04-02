/// @description Edit seed

// catch some special characters
if (keyboard_lastkey == vk_space || keyboard_lastkey == vk_escape || keyboard_lastkey == vk_enter) {
	exit;
}

// remove character if backspace
if (selection == 0 && editMode) {
	if (keyboard_lastkey == vk_backspace) {
		if (string_length(obj_gameOptions.tempSeed) > 0) {
			obj_gameOptions.tempSeed = string_delete(obj_gameOptions.tempSeed, string_length(obj_gameOptions.tempSeed), 1);
		}
		
		exit;
	}
	
	// add character to seed
	if (string_length(obj_gameOptions.tempSeed) < 20) {
		obj_gameOptions.tempSeed = obj_gameOptions.tempSeed + chr(keyboard_lastkey);
	}
}