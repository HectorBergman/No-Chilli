/// @description Insert description here
// You can write your code in this editor
if (instance_exists(parent)){

	var notifInfo = createNotification(parent, image_xscale, image_yscale, offset)
	if (notifInfo.wasDrawn){
		var offsets = determineTruOffset(offset, notifInfo.angle)
		
		draw_sprite_ext(parent.sprite_index, 0 , notifInfo.x+image_xscale*offsets[0], notifInfo.y+image_yscale*offsets[1], image_xscale, image_yscale, 0 ,c_white, 1)
	}
}
