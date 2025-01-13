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