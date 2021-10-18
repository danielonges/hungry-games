/// @description Draw knife button as GUI
buttonSize = 60;

// show sprite with green overlay when using knife
if (oPlayer.state == PLAYERSTATE.ATTACK_KNIFE) {
	draw_sprite_stretched(sKnifeUseButton, 0, x, y, buttonSize, buttonSize);
} else {
	draw_sprite_stretched(sKnifeButton, 0, x, y, buttonSize, buttonSize);
}

// draw cooldown animation
if (oPlayer.alarm[2] != -1) {
	originalCooldown = oPlayer.knife_cooldown * room_speed;
	draw_cooldown(x, y, x + buttonSize, y + buttonSize, 1 - (oPlayer.alarm[2] / originalCooldown));
}
