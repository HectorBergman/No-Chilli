/// @description Insert description here
// You can write your code in this editor
if (verticalSpeed > -verticalSpeedCap){
	verticalSpeed -= 0.05;
}
if (place_meeting(x,y, chiliman)){
	if sign(chiliman.verticalSpeed) == 1{
		chiliman.verticalSpeed *= 0.95
		chiliman.verticalSpeed += verticalSpeed*0.1
		if abs(chiliman.verticalSpeed) < 1{
			chiliman.verticalSpeed = 0
		}
	}else if chiliman.verticalSpeed == 0{
		chiliman.verticalSpeed += chiliman.playerGrav
		chiliman.verticalSpeed += verticalSpeed
	}else{
		if chiliman.verticalSpeed > verticalSpeed{
			chiliman.verticalSpeed = verticalSpeed*0.97
		}else if chiliman.verticalSpeed < verticalSpeed{
		}
	}
}
y = y +verticalSpeed
