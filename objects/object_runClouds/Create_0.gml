/// @description Insert description here
// You can write your code in this editor

//no lie the boilerplate for this part was mostly chatgpt cause i got lazy
_direction = choose(-1, 1);
image_speed = 0;
image_index = spriteNumber

//scaleGrowth = random(log10(abs(chiliman.horizontalSpeed))*0.05)


// Initial scale
scale = 1 // Start at base size
scale_base = 0.5; // Base growth multiplier
elapsed_time = 0; // Track time to calculate logarithmic growth

image_xscale = scale*_direction
image_yscale = scale;


// Bias for movement: Upward and Left (-1) or Right (1)
bias_x = -sign(chiliman.horizontalSpeed); // Pass this when creating the instance: -1 for left, 1 for right
bias_y = -1;        // Dust should mostly move upward

spd = random(3) // Random speed
dir = irandom_range(0, 359); // Random direction
_gravity = 0.1; // Simulated gravity effect
life = irandom_range(30, 60); // Lifespan of the dust
opacity = 1; // Opacity for fade-out effect


lifeTimeLeft = lifeTime
