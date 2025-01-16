PAUSEVARS
depth = -1;
image_index = random_range(1,30);
timer = 0
timeadd = 0.05;
originalY = y
auraStruct = {
	parent: id,
	
}
aura = instance_create_depth(self.x, self.y, 10, obj_superhotsauce_aura, auraStruct)

state = hotsauceStates.uncollected;

function uncollectedLogic_super(){
	timer += timeadd
	y = originalY + sin(timer)*4
}
sound = snd_pickupSauce_super
pulseSize = 2;
uiCoord = [];
goalCoord = [100, 800]
collectionScale = 2;

cam = instance_find(object_zcamera, 0);
camScale = 2.5 - 0.0015625*cam.camWidth