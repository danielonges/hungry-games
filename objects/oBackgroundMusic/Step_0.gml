/// @description ?
if (audio_sound_get_gain(current_sound) != bgGainLevel) {
	audio_sound_gain(current_sound, bgGainLevel, 0);
}

switch (room) {
	case rMenu:
	case rInstructions:
	case rCredits:
	case rTutorial:
	case rGameStart:
		if (current_sound != sndMainMenu) {
			audio_stop_sound(current_sound);
			audio_play_sound(sndMainMenu, bgSndPriority, true);
			current_sound = sndMainMenu;
		}
		break;
	case Room1:
		if (current_sound != sndLevel1) {
			audio_stop_sound(current_sound);
			audio_play_sound(sndLevel1, bgSndPriority, true);
			current_sound = sndLevel1;
		}
		break;
	case Room2:
		if (current_sound != sndBoss1) {
			audio_stop_sound(current_sound);
			audio_play_sound(sndBoss1, bgSndPriority, true);
			current_sound = sndBoss1;
			
		}
		break;
	case Room3:
		if (current_sound != sndLevel2) {
			audio_stop_sound(current_sound);
			audio_play_sound(sndLevel2, bgSndPriority, true);
			current_sound = sndLevel2;
		}
		break;
	case Room4:
		if (current_sound != sndBoss2) {
			audio_stop_sound(current_sound);
			audio_play_sound(sndBoss2, bgSndPriority, true);
			current_sound = sndBoss2;
		}
		break;
	case Room5:
		if (current_sound != sndLevel3) {
			audio_stop_sound(current_sound);
			audio_play_sound(sndLevel3, bgSndPriority, true);
			current_sound = sndLevel3;
		}
		break;
	case Room6:
		if (current_sound != sndBoss3) {
			audio_stop_sound(current_sound);
			audio_play_sound(sndBoss3, bgSndPriority, true);
			current_sound = sndBoss3;
		}
		break;
	case rGameEnd:
		if (current_sound != sndFinishGame) {
			audio_stop_sound(current_sound);
			audio_play_sound(sndFinishGame, bgSndPriority, true);
			current_sound = sndFinishGame;
		}
		break;
}