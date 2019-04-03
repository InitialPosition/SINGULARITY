/// @description  Go down

if (!editMode) {
	selection++;
	if (selection > items) {
		selection = 0;
	}
}

if (selection == 1) {
	if (!global.storyMode) {
		selection = 2;
	}
}