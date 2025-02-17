/*if (parent.object_index == obj_settingser){
	if (type == "master"){
		draw_sprite_part_ext(sprite_index, image_index, 0, 0, floor(sprite_width*global.volume), sprite_height,
							 x, y, 3, 3, c_white, 1);
	}else if (type == "music"){
		draw_sprite_part_ext(sprite_index, image_index, 0, 0, floor(sprite_width*global.musicvolume), sprite_height,
							 x, y, 3, 3, c_white, 1);
	}else if (type == "sfx"){
		draw_sprite_part_ext(sprite_index, image_index, 0, 0, floor(sprite_width*global.soundfx), sprite_height,
							 x, y, 3, 3, c_white, 1);
	}
}else{
	draw_sprite_ext(sprite_index, image_index, x, y, 3, 3, 0, c_white, 1);
}