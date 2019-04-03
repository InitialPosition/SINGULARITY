/// @description Go up

if (!editMode) {
	selection--;
	if (selection < 0) {
		selection = items;
	}
}

if (selection == 1) {
	if (!global.storyMode) {
		selection = 0;
	}
}