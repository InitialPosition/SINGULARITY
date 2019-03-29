/// @description Decrease

switch (selected) {
	case 0:
		if (global.musicLvl > 0) {
			global.musicLvl -= 0.1;
		}
		break;
	case 1:
		if (global.sfxLvl > 0) {
			global.sfxLvl -= 0.1;
		}
		break;
}

audio_group_set_gain(audiogroup_default, global.musicLvl, 0);
audio_group_set_gain(audiogroup_sfx, global.sfxLvl, 0);