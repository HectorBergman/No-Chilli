/// @description Insert description here
// You can write your code in this editor
global.u_pixelH_Wave = shader_get_uniform(shWave, "pixelH");
global.u_pixelW_Wave = shader_get_uniform(shWave, "pixelW");
global.u_springCount = shader_get_uniform(shWave, "springCount");
global.u_springs = shader_get_uniform(shWave, "springs");
global.u_time = shader_get_uniform(shWave, "time");

waterDivision = 8;

relaxDude = instance_find(obj_relax, 0);

image_alpha = 0.5;
transparencyBufferHeight = 32;
springCount = ceil(sprite_width/waterDivision);
springs[springCount] = 0;
springsVelocity[springCount] = 0;
springDeltaL[springCount] = 0;
springDeltaR[springCount] = 0;
k = 0.035;
d = 0.025;
spread = 0.25;

meeting = false;

