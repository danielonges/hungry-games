/// @description Draw fork button as GUI
buttonSize = 60;

// show sprite with green overlay when using fork
if (oPlayer.state == PLAYERSTATE.ATTACK_FORK) {
	draw_sprite_stretched(sForkUseButton, 0, x, y, buttonSize, buttonSize);
} else {
	draw_sprite_stretched(sForkButton, 0, x, y, buttonSize, buttonSize);
}

// draw cooldown animation
if (oPlayer.alarm[1] != -1) {
	originalCooldown = oPlayer.fork_cooldown * room_speed;
	draw_cooldown(x, y, x + buttonSize, y + buttonSize, 1 - (oPlayer.alarm[1] / originalCooldown));
}
