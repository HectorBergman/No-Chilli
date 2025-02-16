/// @description Insert description here
// You can write your code in this editor
dataloaderStruct = {			
}
instance_create_depth(self.x, self.y, -30, obj_windowcorrecter, dataloaderStruct)
instance_create_depth(self.x, self.y, -30, obj_skipIfSeenAndDataLoader, dataloaderStruct)
instance_create_depth(self.x, self.y, -30, obj_setFont, dataloaderStruct)

global.volume = 1;
global.musicvolume = 1;
global.soundfx = 1;
global.settingser = false;
//just realized i can just make functions for all this shit lol
