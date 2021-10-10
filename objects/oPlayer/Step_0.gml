/// @description Core Player Logic
// You can write your code in this editor

// get player inputs
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

key_attack_spoon = keyboard_check(ord("J"));
key_attack_fork = keyboard_check(ord("K"));
key_attack_knife = keyboard_check(ord("L"));

switch (state) {
	case PLAYERSTATE.FREE:
		PlayerState_Free();
		break;
	case PLAYERSTATE.ATTACK_SPOON:
		PlayerState_Attack_Spoon();
		break;
}