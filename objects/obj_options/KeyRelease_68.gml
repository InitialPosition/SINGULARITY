/// @description Increase

switch (selected) {
	case 0:
		if (global.musicLvl < 1) {
			global.musicLvl += changeAmount;
		}
		break;
	case 1:
		if (global.sfxLvl < 1) {
			global.sfxLvl += changeAmount;
		}
		break;
}

audio_group_set_gain(audiogroup_default, global.musicLvl, 0);
audio_group_set_gain(audiogroup_sfx, global.sfxLvl, 0);

currentHoldTimer = holdTimer;