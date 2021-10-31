// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerHit(_dmg){
	// kickback player
	hit_from = sign(x - other.x) * 3;
	flash = 3;
	global.hp = clamp(global.hp - _dmg, 0, 30);
	healthLost = _dmg;
	//if (instance_exists(oPlayerMan)) {
		//audio_play_sound(sndManHit, 1, false);
	//} TODO after Man implemented
	if (instance_exists(oPlayerTeen)) {
		audio_play_sound(sndTeenHit, hitSndPriority, false);
	} else {
		audio_play_sound(sndBoyHit, hitSndPriority, false);
	}
	with (instance_create_layer(x, y, "Player", oHealthEnergyFeedback)) {
		changeAmt = other.healthLost;
		changeType = CHANGE_TYPE.LOSE_HEALTH;
	}
}