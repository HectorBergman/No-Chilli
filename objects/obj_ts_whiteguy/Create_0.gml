finalCoord = [-423, -408]
// Target position
target_x = -423;
target_y = -408;
x = -423;
y = -700
// Desired time to reach the target in seconds
desired_time = 6.11;

// PID constants
kp = 0.001;   // Proportional constant
ki = 0.0005;  // Integral constant
kd = 0.0001;  // Derivative constant

// PID variables
error_x = 0;
error_y = 0;
previous_error_x = 0;
previous_error_y = 0;
integral_x = 0;
integral_y = 0;

proportional_x = 1
proportional_y = 1
derivative_x = 1
derivative_y = 1
output_x = 1
output_y = 1
current_speed = 1 

// Initial position of the object
start_x = x;
start_y = y;

// Total distance to target
distance = point_distance(start_x, start_y, target_x, target_y);

// Max speed to move based on distance and desired time
max_speed = distance / desired_time;  // Speed needed to cover distance in desired_time

// Time-related variables
start_time = current_time;  // The current time in milliseconds (use this to track elapsed time)

elapsed_time = audio_sound_get_track_position(global.playingSong);
timeleft = audio_sound_length(global.playingSong) -audio_sound_get_track_position(global.playingSong);