/// @description Draw health bar
var barLength = 50 * (global.hp / 30);
draw_sprite_ext(sHealthBar, 0, global.healthBarX, global.healthBarY, barLength, 1, 0, c_white, 1);
