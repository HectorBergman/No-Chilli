// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function objectEaten(collided){
	if (collided == chiliman){
		var rangeMin = 40;
		var rangeMax = 50;
	}else{
		var rangeMin = 5;
		var rangeMax = 15;
	}
	for (var i = 0; i < random_range(rangeMin,rangeMax); i += 1){
		generateDebris(collided,rangeMin,rangeMax);
	}
}

function generateDebris(collided, rangeMin, rangeMax){
	var left = sprite_get_bbox_left(collided.sprite_index);
	var right = sprite_get_bbox_right(collided.sprite_index);
	var top = sprite_get_bbox_top(collided.sprite_index);
	var bottom = sprite_get_bbox_bottom(collided.sprite_index);

	var bbox_width = right - left;
	var bbox_height = bottom - top;
	
	var hitX = random_range(left-3, left+bbox_width+3);
	var hitY = random_range(top-3, top+bbox_height+3);
	var horSpeed = random_range(-7,7)
	var verSpeed = random_range(-3,-7)
	var debrisDepth = random_range(-5,1)
	var debrisX = collided.x+hitX
	var debrisY = collided.y+hitY
	debrisStruct =
	{
			
		debrisHitX : hitX,
		debrisHitY : hitY,
		verticalSpeed : verSpeed,
		horizontalSpeed : horSpeed,
		sprite : collided.sprite_index,

	};
	instance_create_depth(debrisX, debrisY, debrisDepth, object_debris, debrisStruct);
}

function sprite_region_has_visible_pixels(spr, _xstart, _ystart, w, h) {
    if (!sprite_exists(spr)) return false; // Safety check

    // Create a surface
    var surf = surface_create(w, h);
    surface_set_target(surf);
    
    draw_clear_alpha(c_black, 0); // Clear the surface with full transparency
    gpu_set_blendmode(bm_normal); // Ensure normal blending mode
    draw_sprite_part(spr, 0, _xstart, _ystart, w, h, 0, 0); // Draw sprite part
    gpu_set_blendmode(bm_normal); // Reset blend mode
    surface_reset_target();

    if (!surface_exists(surf)) {
        return false; // If the surface somehow doesn't exist, fail safely
    }

    // Loop through pixels and check alpha
    var found_visible = false;
    for (var i = 0; i < h; i++) {
        for (var j = 0; j < w; j++) {
            var pixel = surface_getpixel(surf, j, i);
            var alpha = (pixel >> 24) & 255; // Extract alpha channel
            
            if (alpha > 0) {
                found_visible = true; // A visible pixel is found
                break;
            }
        }
        if (found_visible) break; // Exit early if a visible pixel is found
    }

    surface_free(surf);
    return found_visible;
}


function sprite_region_visual_debug(spr, _xstart, _ystart, w, h, draw_x, draw_y) {
    if (!sprite_exists(spr)) return; // Safety check

    var surf = surface_create(w, h);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    draw_sprite_part(spr, 0, _xstart, _ystart, w, h, 0, 0); // Extract part of the sprite
    surface_reset_target();

    // Draw the extracted part on the screen at (draw_x, draw_y)
    draw_surface(surf, draw_x, draw_y);

    // Free surface memory (optional: remove if you want it to persist)
    surface_free(surf);
}

function playerEaten(){
	for (var i = 0; i < 30; i += 1){
		var hitX = random_range(15, 27);
		var hitY = random_range(10, 42);
		var horSpeed = random_range(-5,5)
		var verSpeed = random_range(-1,-4)
		var debrisDepth = -5
		var debrisX = x+hitX
		var debrisY = y+hitY

		debrisStruct =
		{
			
			debrisHitX : hitX,
			debrisHitY : hitY,
			verticalSpeed : verSpeed,
			horizontalSpeed : horSpeed,
			sprite : object_get_sprite(object_index),

		};
		instance_create_depth(debrisX, debrisY, debrisDepth, object_debris, debrisStruct);
	}
}