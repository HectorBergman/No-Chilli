/// @description Insert description here
// You can write your code in this editor

scale = 3;
y = 10;
if (isParent){
	scale = 3;
	sprite_index = asset_get_index("spr_cooldown_" + cooldownType);
	if (cooldownType == "dash"){
		cooldownPercentage = (chiliman.dashCooldownTime - chiliman.dashCooldown)/chiliman.dashCooldownTime
		x = -(150+45+150+45)
	}else if (cooldownType == "dive"){
		cooldownPercentage = (chiliman.diveSetTime - chiliman.diveTimer)/chiliman.diveSetTime
		x = -(150+45)
	}else if (cooldownType == "slide"){
		cooldownPercentage = (chiliman.slideSetTime - chiliman.slideTimer)/chiliman.slideSetTime
		x = -10
	}
	meterStruct = {
		isParent : false,
		sprite_index : sprite_index
	}
	
	instance_create_depth(x, y, depth+0.1, obj_cooldownMeter, meterStruct)
}else{
	scale = 3;
	image_alpha = 0.5;
}



function draw_sprite_part_xy(sprite, subimg, x1, y1, x2, y2, x, y) {
    var width = x2 - x1;
    var height = y2 - y1;
    draw_sprite_part(sprite, subimg, x1, y1, width, height, x, y);
}