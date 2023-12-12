var _snd = snd_pc_over;

if !audio_is_playing(_snd) and !global.dialogue audio_play_sound(_snd, 0, false);
