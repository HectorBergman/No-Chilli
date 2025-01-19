PAUSEVARS
gpu_set_texfilter(false);
//960, 540
//640, 360
//800, 450 (?)

camWidth = 960;
camHeight = 540


view_camera[2] = camera_create_view(0, 0, camWidth, camHeight);





follow = instance_find(zobj_bg, 0);


function getChilimanCoordsKinda(){
	
}

x = follow.x;
y = follow.y;

xTo = x;
yTo = y;

