draw_sprite_ext(sprite_index, 0, 0, 0, 3, 3, 0, c_white, 1);
draw_sprite_tiled_ext(spr_jalapeno, 0, global.activeJalapeno.x, global.activeJalapeno.y, 3, 3, c_white, 1);

drawButton(backButton);

drawButton(volumeMinusButton);
drawButton(volumePlusButton);

drawButton(musicPlusButton);
drawButton(musicMinusButton);

drawButton(sfxMinusButton);
drawButton(sfxPlusButton);

drawButton(masterTextButton, 2);
drawButton(musicTextButton, 2);
drawButton(sfxTextButton, 2);

volumeBarDrawer(masterBarButton)
volumeBarDrawer(musicBarButton)
volumeBarDrawer(sfxBarButton)

volumeBarDrawer(masterBarButton.child)
volumeBarDrawer(musicBarButton.child)
volumeBarDrawer(sfxBarButton.child)

drawButton(fScreenButton);

