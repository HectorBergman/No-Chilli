/// @description Insert description here
// You can write your code in this editor

if (isParent){
	if (cooldownType == "dash"){
		cooldownPercentage = (dashCooldownTime - dashCooldown)/dashCooldownTime
		//sprite_index = 
	}else if (cooldownType == "dive"){
	}
	meterStruct = {
		isParent : false,
	}

	instance_create_depth(x, y, depth+0.1, obj_cooldownMeter, meterStruct)
}else{
	image_alpha = 0.5;
}
