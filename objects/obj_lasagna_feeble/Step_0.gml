/// @description Insert description here
// You can write your code in this editor
if (steppedOn){
	fallTimer--
}
if (place_meeting(x,y-1,chiliman)){
	steppedOn = true;
}
if (fallTimer < 0){
	if (verticalSpeed < 5){
		verticalSpeed += 0.2
	}
}
y += verticalSpeed;