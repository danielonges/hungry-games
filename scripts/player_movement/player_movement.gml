// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_movement(){
	// calculate movement
	hsp = (key_right - key_left) * walksp;
	// simulates gravity
	vsp += grv;

	// if we're standing on a floor
	if (place_meeting(x, y + 1, oWall) && key_jump) {
		vsp = -jumpsp;
	}
	
	// Collision with enemy
	if (place_meeting(x, y, oEnemy)) {
		direction = oEnemy.hit_from;
		// bounce backwards upon collision
		hsp = lengthdir_x(-sign(hsp) * 20, direction);
		vsp = lengthdir_y(3, direction);
		
		global.hp = clamp(global.hp - 2, 0, 30); // TODO: replace 2 with actual dmg dealt
	}

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