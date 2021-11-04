/// @description Check if player is dead

if (global.hp <= 0) {
	image_angle = 90;
} else {
	image_angle = 0;
}

if (room == Room6 && instance_exists(oBoss_Level3_Dead)) {
	global.hasFinishedGame = true;
}
