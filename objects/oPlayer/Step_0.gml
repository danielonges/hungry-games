/// @description Core Player Logic
// You can write your code in this editor

// get player inputs
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

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
	case PLAYERSTATE.ATTACK_FORK:
		PlayerState_Attack_Fork();
		break;
	case PLAYERSTATE.ATTACK_KNIFE:
		PlayerState_Attack_Knife();
		break;
	case PLAYERSTATE.DEAD:
		PlayerState_Dead();
		break;
}