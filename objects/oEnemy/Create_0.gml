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
attack_distance = 0;

prev_sp = hsp;
is_knockbacked = false;

has_hit_player = false;

knockback_fr = 0.1;

attack_dmg = 2;

hp = 5;
max_hp = hp;

flash = 0;
hit_from = 0;

attack_cooldown = 1;

state = ENEMYSTATE.FREE;

enemy_type = ENEMYTYPE.FAT;

default_sprite = sEnemy;
attacking_sprite = sEnemy;
attacking_HB = sEnemy;

enum ENEMYSTATE {
	FREE,
	ATTACKING,
	DEAD
}

enum ENEMYTYPE {
	FAT,
	PROTEIN,
	CARB,
	BOSS
}
