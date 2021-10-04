/// @description Establish some key variables
// You can write your code in this editor

// horizontal speed
hsp = 0
// vertical speed
vsp = 0;
// gravity
grv = 0.3;
// walking speed
walksp = 3;
// jumping speed
jumpsp = 6;

hp = 5;
max_hp = hp;

flash = 0;
hit_from = 0;

attack_cooldown = 1;

state = ENEMYSTATE.FREE;

enum ENEMYSTATE {
	FREE,
	HIT,
	DEAD
}
