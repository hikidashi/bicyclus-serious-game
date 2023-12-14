var _snd = snd_bed;

if !audio_is_playing(_snd) and !global.dialogue and global.scene != -1 audio_play_sound(_snd, 0, false);
