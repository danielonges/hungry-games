function PlayerState_Free() {
	
	player_movement();

	//// animation
	if (!place_meeting(x, y + 1, oWall) && !on_ladder) {
		sprite_index = sPlayer_Running;
		image_speed = 0;
		if (vsp > 0) image_index = 2;
		else image_index = 0;
	} else {
		image_speed = 1;
		if (hsp == 0 || on_ladder) {
			sprite_index = sPlayer;	
		} else {
			sprite_index = sPlayer_Running;	
		}
	}

	// flip sprite depending on which direction it's facing
	if (hsp != 0 && !is_knockbacked) {
		image_xscale = sign(hsp);	
	}

	if (key_attack_spoon && can_spoon) {
		state = PLAYERSTATE.ATTACK_SPOON;
	}
	
	if (key_attack_fork && can_fork && global.energy >= fork_energy) {
		global.energy -= fork_energy;
		state = PLAYERSTATE.ATTACK_FORK;
		with (instance_create_layer(x, y, "Player", oHealthEnergyFeedback)) {
			changeAmt = other.fork_energy;
			changeType = CHANGE_TYPE.LOSE_ENERGY;
		}
	}
	
	// can only knife when not jumping or falling
	if (key_attack_knife && can_knife && global.energy >= knife_energy && place_meeting(x, y + 1, oWall)) {
		global.energy -= knife_energy;
		state = PLAYERSTATE.ATTACK_KNIFE;
		with (instance_create_layer(x, y, "Player", oHealthEnergyFeedback)) {
			changeAmt = other.knife_energy;
			changeType = CHANGE_TYPE.LOSE_ENERGY;
		}
	}

}