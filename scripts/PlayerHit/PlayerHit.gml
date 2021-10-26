// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerHit(_dmg){
	// kickback player
	hit_from = sign(x - other.x) * 3;
	flash = 3;
	global.hp = clamp(global.hp - _dmg, 0, 30);
	healthLost = _dmg;
	with (instance_create_layer(x, y, "Player", oHealthEnergyFeedback)) {
		changeAmt = other.healthLost;
		changeType = CHANGE_TYPE.LOSE_HEALTH;
	}
}