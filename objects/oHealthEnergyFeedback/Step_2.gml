/// @description Bounce
playerGuiCoords = get_player_gui_coords();
yy = playerGuiCoords[1];
randomYOffset = irandom_range(-30, 30);
if (y >= ystart) {
    y = yy - 75 + randomYOffset;
    if (bounced) {
        vspeed = 0;
        gravity = 0;
    } else {
        vspeed = -8;
        bounced = true;
    }
}
