/// @description Rotate

PAUSABLE_OBJECT

image_angle += turnSpeed;
if (image_angle > 360) {
	image_angle -= 360;
}