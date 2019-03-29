/// @description Set up intro timer

alarm[0] = room_speed * 4;

message = "- ALARM -";
message2 = "SINGULARITY APPROACHING! ESCAPE!";

// generate hazards
repeat 35 {
	instance_create_layer(random_range(1920, room_width - 300), random_range(30, room_height - 30), "Instances", obj_asteroidFinal);
}

audio_stop_sound(mus_level);
audio_group_set_gain(audiogroup_default, global.musicLvl, 0);
audio_play_sound(mus_escape, 1, 1);

// destroy any gold that may spawned
with (obj_treasure) {
	instance_destroy();
}