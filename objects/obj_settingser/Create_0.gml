/// @description Insert description here
// You can write your code in this editor

x = -99999
y = -99999
tempWidth = 0
tempHeight = 0;


depth = -21
activeBorder = noone;
activeJalapeno = noone;

image_xscale = 1;
image_yscale = 1;


var backStruct =
{
	spriteName : spr_back,
	toRoom : -6,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
backButton = instance_create_depth(960-182*3/2, 840, 1, obj_button_settings, backStruct);

var volumeMinusStruct =
{
	spriteName : spr_minusbutt,
	toRoom : -7,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
volumeMinusButton = instance_create_depth(960-32*3-3*64*2, 249, 1, obj_button_settings, volumeMinusStruct);

var volumePlusStruct =
{
	spriteName : spr_plusbutt,
	toRoom : -8,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
volumePlusButton = instance_create_depth(960-32*3+3*64*2, 249, 1, obj_button_settings, volumePlusStruct);

var musicMinusStruct =
{
	spriteName : spr_minusbutt,
	toRoom : -10,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
musicMinusButton = instance_create_depth(960-32*3-3*64*2, 450, 1, obj_button_settings, musicMinusStruct);

var musicPlusStruct =
{
	spriteName : spr_plusbutt,
	toRoom : -11,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
musicPlusButton = instance_create_depth(960-32*3+3*64*2, 450, 1, obj_button_settings, musicPlusStruct);

var sfxMinusStruct =
{
	spriteName : spr_minusbutt,
	toRoom : -12,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
sfxMinusButton = instance_create_depth(960-32*3-3*64*2, 651, 1, obj_button_settings, sfxMinusStruct);

var sfxPlusStruct =
{
	spriteName : spr_plusbutt,
	toRoom : -13,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
sfxPlusButton = instance_create_depth(960-32*3+3*64*2, 651, 1, obj_button_settings, sfxPlusStruct);

var masterTextStruct =
{
	spriteName : spr_masterText,
	toRoom : -14,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
masterTextButton = instance_create_depth(960-48*2, 249-48+45, 1, obj_button_settings, masterTextStruct);

var musicTextStruct =
{
	spriteName : spr_musicText,
	toRoom : -15,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
musicTextButton = instance_create_depth(960-48*2, 450-48+45, 1, obj_button_settings, musicTextStruct);

var sfxTextStruct =
{
	spriteName : spr_sfxText,
	toRoom : -16,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
sfxTextButton = instance_create_depth(960-48*2, 651-48+45, 1, obj_button_settings, sfxTextStruct);

var masterBarStruct =
{
	spriteName : spr_volumebar,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
	type: "master",
}
masterBarButton = instance_create_depth(960-44.5*3*2, 249+45+45, -200, zobj_volumebar, masterBarStruct);
var musicBarStruct =
{
	spriteName : spr_volumebar,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
	type : "music",
}
musicBarButton = instance_create_depth(960-44.5*3*2, 450+45+45, -200, zobj_volumebar, musicBarStruct);
var sfxBarStruct =
{
	spriteName : spr_volumebar,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
	type : "sfx",
}
sfxBarButton = instance_create_depth(960-44.5*3*2, 651+45+45, -200, zobj_volumebar, sfxBarStruct);

var fScreenStruct =
{
	spriteName : spr_fullscreen,
	toRoom : -9,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
fScreenButton = instance_create_depth(960-255*3/2, 9, 1, obj_button_settings, fScreenStruct);


/*var jalapenoStruct =
{
	_depth : 99,
	parent : id,
}
jalapeno = instance_create_depth(x, y, 99, obj_jalapeno, jalapenoStruct);
*/
function drawButton(button, size = 3){
	draw_sprite_ext(button.sprite_index, button.image_index, button.x, button.y, size, size, 0, c_white, 1);
}

function volumeBarDrawer(bar){
	show_debug_message(bar.sprite_width);
	if (bar.child != noone){
		if (bar.type == "master"){
			draw_sprite_part_ext(bar.sprite_index, bar.image_index, 0, 0, floor(bar.sprite_width/3*global.volume), bar.sprite_height,
								 bar.x, bar.y, 3, 3, c_white, 1);
		}else if (bar.type == "music"){
			draw_sprite_part_ext(bar.sprite_index, bar.image_index, 0, 0, floor(bar.sprite_width/3*global.musicvolume), bar.sprite_height,
								 bar.x, bar.y, 3, 3, c_white, 1);
		}else if (bar.type == "sfx"){
			draw_sprite_part_ext(bar.sprite_index, bar.image_index, 0, 0, floor(bar.sprite_width/3*global.soundfx), bar.sprite_height,
								 bar.x, bar.y, 3, 3, c_white, 1);
		}
	}else{
		draw_sprite_ext(bar.sprite_index, 1, bar.x, bar.y, 3, 3, 0, c_white, 1);
	}
}

