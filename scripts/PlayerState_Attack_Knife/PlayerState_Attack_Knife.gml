// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Knife(){
	
	hsp = 0;
	vsp = 0;
	
	if (sprite_index != sPlayer_Attack_Knife) {
		sprite_index = sPlayer_Attack_Knife;
	}

	if (can_knife) {
		
	}
	
	if (animation_end()) {
		with (instance_create_layer(x, y, "Knife", oKnife)) {
			speed = 15;
			direction = other.image_xscale < 0 ? 180 : 0;
			image_xscale = other.image_xscale;
		}
		sprite_index = sPlayer;
		state = PLAYERSTATE.FREE;
		can_knife = false;
		alarm[2] = room_speed * knife_cooldown;
	}
}