spriteString = "bg_space_obj" + string(irandom_range(1,4))

sprite_index = asset_get_index(spriteString);
spin = random_range(-0.05, 0.05);
image_angle = random_range(0,360);
xSpeed = random_range(0.3,-0.3);
ySpeed = random_range(0.3,-0.3);
x = random_range(room_width, 0);
y = random_range(room_height, 0);

parallax = random_range(0.7,0.98);
depth = parallax*500;

cam = instance_find(object_zcamera, 0);
camPrevPosition = [cam.x, cam.y];

grayscaleStruct = {
	image_alpha : parallax-0.6,
	parent : id,
	image_angle : image_angle,
	sprite_index : asset_get_index(spriteString + "_gs"),
}

instance_create_depth(x, y, depth-0.1, zobj_bg_object_grayscale, grayscaleStruct)