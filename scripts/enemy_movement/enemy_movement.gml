// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_movement(){

	// simulates gravity
	vsp += grv;

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