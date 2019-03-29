f = file_text_open_write(working_directory + "options.sdf");

file_text_write_real(f, global.musicLvl);
file_text_write_real(f, global.sfxLvl);
file_text_write_real(f, global.fullscreen);

file_text_close(f);