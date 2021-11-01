/// @description Move to next room
if (!has_boss || (has_boss && instance_exists(dead_boss))) {
	with (oPlayer) {
		SlidesTransition(TRANS_MODE.GOTO, other.target);
	}
}
