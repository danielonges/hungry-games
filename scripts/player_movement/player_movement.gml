// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_movement(){
	// calculate movement
	hsp = (key_right - key_left) * walksp;
	// simulates gravity
	vsp += grv;
	
	if (hit_from != 0) {
		if (!is_knockbacked) {
			prev_sp = hsp;	
			is_knockbacked = true;
		}
		direction = hit_from;
		hsp = hit_from;
		hit_from -= sign(hit_from) * knockback_fr;
	} else {
		if (is_knockbacked) {
			hsp = prev_sp;
			is_knockbacked = false;
		} else {
			hsp = hsp;
		}
	}

	// if we're standing on a floor
	if (place_meeting(x, y + 1, oWall) && key_jump) {
		vsp = -jumpsp;
	}
	
	// If get onto ladder
	if (key_up || key_down) {
		if (place_meeting(x, y, oLadder)) {
			on_ladder = true;
		}
	} else {
		// vertical collision with ladder
		// lets player walk across the top of the ladder
		if (place_meeting(x, y + vsp, oLadder)) {
			on_ladder = false;
			while (!place_meeting(x, y + sign(vsp), oLadder)) {
				y += sign(vsp);
			}
			vsp = 0;
		}
	}

	// If currently on ladder
	if (on_ladder) {
		vsp = 0;
		if (key_up) {
			vsp = -2;
		}
		if (key_down) {
			vsp = 2;
		}
		if (!place_meeting(x, y, oLadder)) {
			on_ladder = false;
		}
		if (key_jump) {
			on_ladder = true;
		}
	}

	//// Collision with enemy
	//if (place_meeting(x, y, oEnemy)) {
	//	direction = oEnemy.hit_from;
	//	// bounce backwards upon collision
	//	hsp = lengthdir_x(-sign(hsp) * 20, direction);
	//	vsp = lengthdir_y(3, direction);
		
	//	global.hp = clamp(global.hp - 2, 0, 30); // TODO: replace 2 with actual dmg dealt
	//}

	// horizontal collision
	if (place_meeting(x + hsp, y, oWall)) {
		// sign returns 1, 0 or -1 depending on if the value is positive or negative
		while (!place_meeting(x + sign(hsp), y, oWall)) {
			x += sign(hsp);
		}
		hsp = 0;
	}
	x += hsp;

	// vertical collision
	if (place_meeting(x, y + vsp, oWall)) {
		while (!place_meeting(x, y + sign(vsp), oWall)) {
			y += sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;
}