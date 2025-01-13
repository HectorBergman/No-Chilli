/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
timer = 0;
animationTime = 6*9;
sintimer = 0;
timeadd = 0.01
originalY = y;

state = hotsauceStates.uncollected;

function uncollectedLogic_strong(){
	
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
}