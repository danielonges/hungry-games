/// @description

// basic config
alarm[0] = 2 * room_speed;
image_alpha = 1;

// generate random x and y offsets
// to minimise overlaps between multiple instances
randomXOffset = irandom_range(-25, 25);
randomYOffset = irandom(50);

// defaults will be changed when instantiated
changeAmt = 0;
changeType = CHANGE_TYPE.GAIN_ENERGY;

enum CHANGE_TYPE {
	GAIN_ENERGY,
	LOSE_ENERGY,
	GAIN_HEALTH,
	LOSE_HEALTH
}
