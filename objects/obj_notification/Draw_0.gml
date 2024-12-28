/// @description Insert description here
// You can write your code in this editor
if (instance_exists(parent)){

	var notifInfo = createNotification(parent, image_xscale, image_yscale)
	if (notifInfo.wasDrawn){
		var x_offset = 0;
		var y_offset = 0;
		if (notifInfo.angle == 0){
			y_offset = 25
		}else if(notifInfo.angle == 90){
			x_offset = -25
		}else if(notifInfo.angle == 180){
			y_offset = 25
		}else if(notifInfo.angle == 270){
			x_offset = 25
		}
		draw_sprite_ext(parent.sprite_index, 0 , notifInfo.x+x_offset, notifInfo.y+y_offset, image_xscale, image_yscale, 0 ,c_white, 1)
	}
}
