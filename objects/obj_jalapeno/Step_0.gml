/// @description Insert description here
// You can write your code in this editor
x += 0.1
y -= 0.05
try{
	image_xscale = cam.camWidth/640
	image_yscale = cam.camHeight/360
}catch(e){
	image_xscale = 3;
	image_yscale = 3;
}