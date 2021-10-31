function PlayerState_Free() {
	
	player_movement();

	//// animation
	if (!place_meeting(x, y + 1, oWall) && !on_ladder) {
		sprite_index = player_running_sprite;
		image_speed = 0;
		if (vsp > 0) image_index = 2;
		else image_index = 0;
	} else {
		image_speed = 1;
		if (hsp == 0 || on_ladder) {
			sprite_index = player_sprite;	
		} else {
			sprite_index = player_running_sprite;	
		}
	}

	// flip sprite depending on which direction it's facing
	if (hsp != 0 && !is_knockbacked) {
		image_xscale = sign(hsp);	
	}

	if (key_attack_spoon && can_spoon) {
		state = PLAYERSTATE.ATTACK_SPOON;
		audio_play_sound(sndSpoonAttack, attackSndPriority, false);
	}
	
	if (key_attack_fork && can_fork && global.energy >= fork_energy) {
		global.energy -= fork_energy;
		state = PLAYERSTATE.ATTACK_FORK;
		audio_play_sound(sndForkAttack, attackSndPriority, false);
		with (instance_create_layer(x, y, "Player", oHealthEnergyFeedback)) {
			changeAmt = other.fork_energy;
			changeType = CHANGE_TYPE.LOSE_ENERGY;
		}
	}
	
	// can only knife when not jumping or falling
	if (key_attack_knife && can_knife && global.energy >= knife_energy && place_meeting(x, y + 1, oWall)) {
		global.energy -= knife_energy;
		state = PLAYERSTATE.ATTACK_KNIFE;
		audio_play_sound(sndKnifeAttack, attackSndPriority, false);
		with (instance_create_layer(x, y, "Player", oHealthEnergyFeedback)) {
			changeAmt = other.knife_energy;
			changeType = CHANGE_TYPE.LOSE_ENERGY;
		}
	}

	if (global.hp <= 0) {
		state = PLAYERSTATE.DEAD;
		//if (instance_exists(oPlayerMan)) {
			//audio_play_sound(sndManDeath, deathSndPriority, false);
		//}
		if (instance_exists(oPlayerTeen)) {
			audio_play_sound(sndTeenDeath, deathSndPriority, false);
		} else {
			audio_play_sound(sndBoyDeath, deathSndPriority, false);
		}
	}
}