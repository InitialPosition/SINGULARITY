/// @description Add characters from string to copy

if (copy[counter] != log[counter]) {
	copy[counter] += string_char_at(log[counter], counter2);
	counter2++;
	
	audio_play_sound(snd_terminal, 1, 0);
	
	alarm[1] = 3;
} else {
	counter++;
	alarm[0] = time[counter];
}