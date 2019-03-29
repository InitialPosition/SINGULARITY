/// @description Move camera to follow player

if (instance_exists(obj_tutorialTarget)) {
	x = lerp(x, obj_tutorialTarget.x, 0.1);
}

// set up parallax
camX = camera_get_view_x(view_camera[0])
camY = camera_get_view_y(view_camera[0]);

layer_x("bg_space1", camX * parallaxSpeed1);
layer_x("bg_space2", camX * parallaxSpeed2);
layer_x("bg_space3", camX * parallaxSpeed3);
layer_y("bg_space1", camY * parallaxSpeed1);
layer_y("bg_space2", camY * parallaxSpeed2);
layer_y("bg_space3", camY * parallaxSpeed3);