sprite_index = asset_get_index("bg_space_obj" + string(irandom_range(1,4)));
spin = random_range(-0.1, 0.1);
image_angle = random_range(0,360);
xSpeed = random_range(0.3,-0.3);
ySpeed = random_range(0.3,-0.3);
x = random_range(room_width, 0);
y = random_range(room_height, 0);

parallax = random_range(0,3);
depth = parallax*50;