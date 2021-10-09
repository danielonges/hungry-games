// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(_damage){
	
	hp -= _damage;
	flash = 3;
	hit_from = sign(x - oPlayer.x) * 3;
	
	if (hp > 0) {
		state = ENEMYSTATE.HIT;
	} else {
		state = ENEMYSTATE.DEAD;
	}
}