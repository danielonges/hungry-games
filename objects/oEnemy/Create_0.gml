/// @description Establish some key variables
// You can write your code in this editor

// horizontal speed
//hsp = 0;
// vertical speed
vsp = 0;
// gravity
grv = 0.3;
// walking speed
walksp = 1;
hsp = walksp;
// jumping speed
jumpsp = 6;
//hsp = walksp;
detect_distance = 100;

prev_sp = hsp;
is_knockbacked = false;

knockback_fr = 0.1;

hp = 5;
max_hp = hp;

flash = 0;
hit_from = 0;

attack_cooldown = 1;

state = ENEMYSTATE.FREE;

enemy_type = ENEMYTYPE.FAT;

enum ENEMYSTATE {
	FREE,
	ATTACKING,
	HIT,
	DEAD
}

enum ENEMYTYPE {
	FAT,
	PROTEIN,
	CARB,
}
