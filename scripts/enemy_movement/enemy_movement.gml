// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_movement(){
	

	//	//// test out move towards player
	if (distance_to_object(oPlayer) < 100) {
		hsp = sign(oPlayer.x - x) * walksp; 
	} else {
		hsp = 0;
	}
	
	
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
	

	// horizontal collision
	if (place_meeting(x + hsp, y, oWall)) {
		// sign returns 1, 0 or -1 depending on if the value is positive or negative
		while (!place_meeting(x + sign(hsp), y, oWall)) {
			x += sign(hsp);
		}
		hsp = -hsp;
	}
	
	//// horizontal collision with invisible wall
	//if (place_meeting(x + hsp, y, oInvisibleWall) && hit_from == 0) {
	//	// sign returns 1, 0 or -1 depending on if the value is positive or negative
	//	while (!place_meeting(x + sign(hsp), y, oInvisibleWall)) {
	//		x += sign(hsp);
	//	}
	//	hsp = -hsp;
	//}
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