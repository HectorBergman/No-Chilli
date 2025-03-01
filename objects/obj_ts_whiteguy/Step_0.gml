

timeleft = audio_sound_length(global.playingSong) -audio_sound_get_track_position(global.playingSong);

// Calculate current time elapsed (in seconds)
elapsed_time = audio_sound_get_track_position(global.playingSong);

// Calculate errors (distance to target)
error_x = target_x - x;
error_y = target_y - y;

// Proportional term (P)
proportional_x = kp * error_x;
proportional_y = kp * error_y;

// Integral term (I) - accumulated errors over time
integral_x += ki * error_x;
integral_y += ki * error_y;

// Derivative term (D) - rate of change of the error
derivative_x = kd * (error_x - previous_error_x);
derivative_y = kd * (error_y - previous_error_y);

// Calculate the total PID output
output_x = proportional_x + integral_x + derivative_x;
output_y = proportional_y + integral_y + derivative_y;

// Use a time-based speed adjustment
current_speed = max_speed * (1 - elapsed_time / desired_time);  // Speed decreases as time progresses
show_debug_message(1 - elapsed_time / desired_time);
// Clamp the PID output based on the adjusted speed
output_x = clamp(output_x, -current_speed, current_speed);
output_y = clamp(output_y, -current_speed, current_speed);

// Move the object
x += output_x;
y += output_y;

// Update the previous error for the next frame
previous_error_x = error_x;
previous_error_y = error_y;

// Stop the object once it's close enough to the target
if (abs(error_y) < 0.1) {
    x = target_x;
    y = target_y;
}
