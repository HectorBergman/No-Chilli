/// @description Insert description here
// You can write your code in this editor


// Increment elapsed time
elapsed_time += 1;

// Calculate logarithmic growth
scale = scale_base * log2(elapsed_time + 1); // Add 1 to avoid log(0)


if (!place_meeting(x, y, object_wall)) {
    // Only move horizontally if there's no collision
	
	y += _gravity;
}

x += bias_x * random_range(0.5, 1.0); // Bias towards left or right
y += lengthdir_y(spd, irandom_range(90, 75)); // Always moves upward

// Adjust position upward based on scale growth
//var previous_scale = scale;
//scale += scaleGrowth; // Increase the scale
//y -= (scale - previous_scale)*3; // Compensate for the growth in scale

spd = max(0, spd - 0.05);



image_xscale = scale*_direction
image_yscale = scale;

// Apply gravity to make the dust settle down

if (lifeTimeLeft < lifeTime*0.8){
	image_alpha = lifeTimeLeft/(lifeTime*0.8)-0.3;
}
lifeTimeLeft--

if (lifeTimeLeft < 0){
	instance_destroy(self);
}



