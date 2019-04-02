/// @description Animation

image_xscale += growthRate;
image_yscale = image_xscale;

imgA -= imgAFade;

if (imgA <= 0) {
	instance_destroy();
}