/// @description Draw energy bar
var barLength = 50 * (global.energy / 30);
draw_sprite_ext(sEnergyBar, 0, global.energyBarX, global.energyBarY, barLength, 1, 0, c_white, 1);
