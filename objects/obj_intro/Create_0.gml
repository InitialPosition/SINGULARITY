/// @description Setup

title = "ENTERING";
rand = "UNIVERSE " + string(irandom(999999999));

alarm[0] = room_speed * 2;

// final universe in story mode
if (global.storyMode) {
	if (global.universesVisited > 10) {
		room_goto(rm_finale);
	}
}

// delete gold that somehow survived the cleanup
with (obj_treasure) {
	instance_destroy();
}