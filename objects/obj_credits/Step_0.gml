/// @description Scroll

scrollOffset -= scrollSpeed;

if (abs(scrollOffset) > fadeOffset) {
	if (!instance_exists(obj_fade)) {
		var fade = instance_create_layer(0, 0, "Fade", obj_fade);
		fade.target = rm_mainMenu;
	}
}