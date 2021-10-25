/// @description

// basic config
vspeed = irandom_range(-15, -5);
gravity = irandom_range(3, 5);
gravity_direction = 270;
bounced = false;
alarm[0] = 2 * room_speed;

// defaults will be changed when instantiated
changeAmt = 0;
changeType = CHANGE_TYPE.GAIN_ENERGY;

enum CHANGE_TYPE {
	GAIN_ENERGY,
	LOSE_ENERGY,
	GAIN_HEALTH,
	LOSE_HEALTH
}
