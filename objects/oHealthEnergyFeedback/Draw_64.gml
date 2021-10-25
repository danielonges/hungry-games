/// @description Draw text obj at player
isGainType = changeType == CHANGE_TYPE.GAIN_ENERGY || changeType == CHANGE_TYPE.GAIN_HEALTH;
isHealthType = changeType == CHANGE_TYPE.GAIN_HEALTH || changeType == CHANGE_TYPE.LOSE_HEALTH;

gainOrLossString = isGainType ? "+" : "-";
colour = isGainType ? make_color_rgb(0, 166, 81) : make_color_rgb(238, 28, 336);
icon = isHealthType ? sHeartIcon : sEnergyIcon;

playerGuiCoords = get_player_gui_coords();
xx = playerGuiCoords[0];

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(colour);
draw_set_alpha(image_alpha);
draw_set_font(fHealthEnergyFeedback);
draw_sprite_stretched(icon, 0, xx - 53, y - 35, 36, 36);
draw_text_transformed(xx, y, gainOrLossString + string(changeAmt), 0.4, 0.4, 0);
draw_set_alpha(1);
