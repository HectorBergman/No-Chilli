/// @description Insert description here
// You can write your code in this editor

if (lifeTimeLeft < lifeTime*0.8){
	image_alpha = lifeTimeLeft/(lifeTime*0.8);
}
lifeTimeLeft--

if (lifeTimeLeft < 0){
	instance_destroy(self);
}