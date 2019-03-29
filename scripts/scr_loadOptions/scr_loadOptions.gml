f = file_text_open_read(working_directory + "options.sdf");

global.musicLvl = file_text_read_real(f);
global.sfxLvl = file_text_read_real(f);
global.fullscreen = file_text_read_real(f);

file_text_close(f);