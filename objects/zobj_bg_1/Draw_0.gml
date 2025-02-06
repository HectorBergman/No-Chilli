if (!surface_exists(surf))
{
    surf = surface_create(surfW, surfH);
}
surface_set_target(surf);

draw_clear_alpha(c_black, 0);
draw_sprite_ext(sprite_index, 0, 0, 0, image_xscale, image_yscale, 0, c_white, 1);
surface_reset_target();

//draw_surface(surf, (camX+960/2)-960*xPercentage, (camY-540/2)-540*yPercentage);
draw_surface(surf, camX+cam.camWidth/2-cam.camWidth/2*xPercentage, camY-cam.camHeight/2-cam.camHeight/2*yPercentage)//(camX+960/2), (camY-540/2));

surface_free(surf);