/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
depth = -1;
image_index = random_range(1,30);
enum hotsauceStates{
	uncollected,
	collected
}
state = hotsauceStates.uncollected;
uiCoord = [];
goalCoord = [100, 850]
collectionScale = 2;
sound = snd_pickupSauce_2

startRoom = room;


pulseSize = 0.2
cam = instance_find(object_zcamera, 0);
camScale = 2.5 - 0.0015625*cam.camWidth

function uncollectedLogic_normal(){
	if (room != startRoom){
		instance_destroy()
	};
}