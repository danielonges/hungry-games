// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Free(){

	enemy_movement();
	
	if (hsp != 0) {
		image_xscale = sign(hsp);	
	}
	
	if (place_meeting(x, y, oPlayer)) {
		state = ENEMYSTATE.ATTACKING;	
	}
}