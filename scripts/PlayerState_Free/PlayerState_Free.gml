function PlayerState_Free() {
	
	player_movement();

	//// animation
	//if (!place_meeting(x, y + 1, oWall)) {
	//	sprite_index = sPlayerA;
	//	image_speed = 0;
	//	if (vsp > 0) image_index = 1;
	//	else image_index = 0;
	//} else {
	//	image_speed = 1;
	//	if (hsp == 0) {
	//		sprite_index = sPlayer;	
	//	} else {
	//		sprite_index = sPlayerR;	
	//	}
	//}

	// flip sprite depending on which direction it's facing
	if (hsp != 0) {
		image_xscale = sign(hsp);	
	}

	if (key_attack_spoon && can_spoon) {
		state = PLAYERSTATE.ATTACK_SPOON;
		can_spoon = false;
		alarm[0] = room_speed * spoon_cooldown;
	}

	// TODO: implement rest of attacks
}