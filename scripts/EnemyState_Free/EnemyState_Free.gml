// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Free(){

	if (jump > 0) {
		enemy_movement(jump);
	} else {
		enemy_movement();
	}
	
	if (hsp != 0 && !is_knockbacked) {
		image_xscale = -sign(hsp);	
	}
	
	if ((place_meeting(x + attack_distance, y, oPlayer) || place_meeting(x, y, oPlayer) || place_meeting(x - attack_distance, y, oPlayer)) && can_attack) {
		state = ENEMYSTATE.ATTACKING;	
	}
}