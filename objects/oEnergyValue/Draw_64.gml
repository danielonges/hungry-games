/// @description Draw energy value on energy bar

draw_set_font(fHealthEnergy);

var text = string(global.energy) + " / " + "30";
var textColour = c_white;
var outlineOffset = 2;

var posX = global.energyBarX + (global.energyBarWidth / 2);
var posY = global.energyBarY + (global.energyBarHeight / 3) + 2;

// text outline
draw_set_color(c_dkgray);
draw_text(posX - outlineOffset, posY, text);
draw_text(posX + outlineOffset, posY, text);
draw_text(posX, posY - outlineOffset, text);
draw_text(posX, posY + outlineOffset, text);

// actual text
draw_set_color(textColour);
draw_text(posX, posY, text);
