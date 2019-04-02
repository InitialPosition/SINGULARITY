/// @description Go up

if (!editMode) {
	selection--;
	if (selection < 0) {
		selection = items;
	}
}