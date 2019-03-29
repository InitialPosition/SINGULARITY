/// @description Start scrolling

if (scrollSpeed > -maxScrollSpeed) {
	scrollSpeed -= 0.01;
	alarm[1] = 2;
} else {
	scrollSpeed = -maxScrollSpeed;
}