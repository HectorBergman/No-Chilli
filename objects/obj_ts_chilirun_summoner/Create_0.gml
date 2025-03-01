// Store the start time when the event begins (in milliseconds)
start_time = current_time;
time2summon = 2;
elapsed_time_ms = 0;
elapsed_time_seconds = 0

newTimer = 0.2
switched = false;

fadeStart = 0;
fadeColor = c_white;
fading = false;

desired_time = 6.11;
elapsed_time = audio_sound_get_track_position(global.playingSong);

time2fade = 0.5

time2die = 1;
dieStartTime = 100;
dieTimer = dieStartTime;