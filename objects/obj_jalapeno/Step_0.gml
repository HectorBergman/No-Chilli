/// @description Insert description here
// You can write your code in this editor
if (_depth == 99){
	try{
		if (!instance_exists(parent)){
			instance_destroy(self);
		}
	}catch(e){
		show_debug_message("fail asf");
		instance_destroy(self);
	}
}
x += 0.1
y -= 0.05
try{
	image_xscale = cam.camWidth/640
	image_yscale = cam.camHeight/360
}catch(e){
	image_xscale = 3;
	image_yscale = 3;
}