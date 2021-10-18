/// @description Draw health value on health bar

draw_set_font(fHealthEnergy);

var text = string(global.hp) + " / " + "30";
var textColour = c_white;
var outlineOffset = 2;

var posX = global.healthBarX + (global.healthBarWidth / 2);
var posY = global.healthBarY + (global.healthBarHeight / 3) + 2;

// text outline
draw_set_color(c_dkgray);
draw_text(posX - outlineOffset, posY, text);
draw_text(posX + outlineOffset, posY, text);
draw_text(posX, posY - outlineOffset, text);
draw_text(posX, posY + outlineOffset, text);

// actual text
draw_set_color(textColour);
draw_text(posX, posY, text);
