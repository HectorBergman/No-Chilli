if (state == hotsauceStates.collected && !global.pause){
	draw_sprite_ext(sprite_index, image_index, uiCoord[0], uiCoord[1], collectionScale*camScale, collectionScale*camScale, 0, c_white, 1);
}