/// @description Draw knife button as GUI
buttonSize = 75;
xOffset = 36;
xWithOffset = x + xOffset;

// show sprite with green overlay when using knife
if (oPlayer.state == PLAYERSTATE.ATTACK_KNIFE) {
	draw_sprite_stretched(sKnifeUseButton, 0, xWithOffset, y, buttonSize, buttonSize);
} else {
	draw_sprite_stretched(sKnifeButton, 0, xWithOffset, y, buttonSize, buttonSize);
}

// draw cooldown animation
if (oPlayer.alarm[2] != -1) {
	originalCooldown = oPlayer.knife_cooldown * room_speed;
	draw_cooldown(xWithOffset, y, xWithOffset + buttonSize, y + buttonSize, 1 - (oPlayer.alarm[2] / originalCooldown));
}

// show feedback for insufficient energy
if (oPlayer.key_attack_knife && global.energy < oPlayer.knife_energy && oPlayer.state != PLAYERSTATE.ATTACK_KNIFE) {
	playerGuiCoords = get_player_gui_coords();
	xx = playerGuiCoords[0];
	yy = playerGuiCoords[1];
	draw_gui_message_box(xx, yy, "Needs 3 Energy!", fGeneral, make_color_rgb(235, 42, 42));
}
