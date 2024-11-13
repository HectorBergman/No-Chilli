/// @description Insert description here
// You can write your code in this editor
PAUSE
timer--
if timer < 0{
	if (random(1) > 0.995){
		timer = animationTime
	}
	image_index = 0;
}else{
	image_index = ceil(11-timer/animationTime*10)
}




sintimer += timeadd
y = originalY + sin(sintimer)*6