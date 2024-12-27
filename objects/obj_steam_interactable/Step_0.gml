/// @description Insert description here
// You can write your code in this editor

lifeTime++

if (lifeTime mod 40 == 0 && image_index != 4){
	image_index++
}
if (verticalSpeed > -verticalSpeedCap){
	verticalSpeed -= 0.05;
}
//maybe make this part of chiliman code instead?
//OR make this one entity that draws several fake oens.... yeah...
if (place_meeting(x,y, chiliman)){ //its PLUS cause the verticalSpeed from the steam is already negative!!!
	if chiliman.verticalSpeed > 5{
		chiliman.verticalSpeed += verticalSpeed*0.2
		chiliman.verticalSpeed -= chiliman.playerGrav+0.1
	}else if chiliman.verticalSpeed >= -20{
		chiliman.verticalSpeed += verticalSpeed*0.05
		chiliman.verticalSpeed -= chiliman.playerGrav+0.1
	}
}
y = y + verticalSpeed
