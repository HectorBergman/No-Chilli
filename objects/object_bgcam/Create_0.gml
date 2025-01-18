PAUSEVARS
gpu_set_texfilter(false);
//960, 540
//640, 360
//800, 450 (?)


camState = camStates.normal;



view_camera[2] = camera_create_view(0, 0, 960, 540);





follow = instance_find(obj_bg, 0);


function getChilimanCoordsKinda(){
	
}

x = follow.x;
y = follow.y;

xTo = x;
yTo = y;

camAheadX = 0;
camAheadY = 0;
camAheadStartSpeed = 8; //minimum speed where the camera will start looking ahead
camAheadLimitSpeed = 20;