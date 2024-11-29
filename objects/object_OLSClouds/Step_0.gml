/// @description Insert description here
// You can write your code in this editor
scale = sign(scale)*(abs(scale)+scaleGrowth)
image_xscale = spriteDirection*scale;
image_yscale = abs(scale)
if (lifeTimeLeft < lifeTime*0.8){
	image_alpha = lifeTimeLeft/(lifeTime*0.8);
}
lifeTimeLeft--

if (lifeTimeLeft < 0){
	instance_destroy(self);
}