var parallaxX = (cam.x - camPrevPosition[0])*parallax;
var parallaxY = (cam.y - camPrevPosition[1])*parallax;
x += parallaxX
y += parallaxY

x = x + xSpeed;
y = y + ySpeed;
image_angle = image_angle + spin;

camPrevPosition = [cam.x, cam.y];