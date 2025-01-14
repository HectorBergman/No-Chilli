if (state == hotsauceStates.collected && (uiCoord[0] != goalCoord[0] || uiCoord[1] != goalCoord[1])){
	draw_sprite_ext(sprite_index, image_index, uiCoord[0]*camScale*2, uiCoord[1]*camScale*2, collectionScale*camScale, collectionScale*camScale, 0, c_white, 1);
}