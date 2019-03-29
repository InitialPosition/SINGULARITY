/// @description Win the game

other.invincible = 1;
other.locked = 1;

var fade = instance_create_layer(0, 0, "Fade", obj_fade);
fade.target = rm_endScene;