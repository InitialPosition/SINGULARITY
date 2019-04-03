/// @description Grow

size += growingSpeed;

image_xscale = size / 8;
image_yscale = image_xscale;

if (room != rm_space) {
	visible = false;
} else {
	visible = true;
}