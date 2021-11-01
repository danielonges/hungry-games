/// @description Draw text obj at player
isGainType = changeType == CHANGE_TYPE.GAIN_ENERGY || changeType == CHANGE_TYPE.GAIN_HEALTH;
isHealthType = changeType == CHANGE_TYPE.GAIN_HEALTH || changeType == CHANGE_TYPE.LOSE_HEALTH;

gainOrLossString = isGainType ? "+" : "-";
colour = isGainType ? make_color_rgb(0, 125, 61) : make_color_rgb(238, 28, 336);
icon = isHealthType ? sHeartIcon : sEnergyIcon;

playerGuiCoords = get_player_gui_coords();
xx = playerGuiCoords[0];
yy = playerGuiCoords[1];
yOffset = 55 + randomYOffset;

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_alpha(image_alpha);
draw_sprite_stretched(icon, 0, xx - 40 + randomXOffset, yy - 35 - yOffset, 36, 36);
draw_outlined_text(xx + 15 + randomXOffset, yy - yOffset, fHealthEnergyFeedback,
	gainOrLossString + string(changeAmt), 0.4, colour, c_white, 2);
draw_set_alpha(1);
