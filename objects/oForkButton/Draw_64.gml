/// @description Draw fork button as GUI
buttonSize = 75;
xOffset = 18;
xWithOffset = x + xOffset;
yOffset = 5;
yWithOffset = y - yOffset;

// show sprite with green overlay when using fork
if (oPlayer.state == PLAYERSTATE.ATTACK_FORK) {
	draw_sprite_stretched(sForkUseButton, 0, xWithOffset, yWithOffset, buttonSize, buttonSize);
} else {
	draw_sprite_stretched(sForkButton, 0, xWithOffset, yWithOffset, buttonSize, buttonSize);
}

// draw cooldown animation
if (oPlayer.alarm[1] != -1) {
	originalCooldown = oPlayer.fork_cooldown * room_speed;
	draw_cooldown(xWithOffset, yWithOffset, xWithOffset + buttonSize, yWithOffset + buttonSize, 1 - (oPlayer.alarm[1] / originalCooldown));
}

// show feedback for insufficient energy
if (oPlayer.key_attack_fork && global.energy < oPlayer.fork_energy && oPlayer.state != PLAYERSTATE.ATTACK_FORK) {
	playerGuiCoords = get_player_gui_coords();
	xx = playerGuiCoords[0];
	yy = playerGuiCoords[1];
	draw_gui_message_box(xx, yy, "Needs 2 Energy!", fGeneral, make_color_rgb(235, 42, 42));
}
