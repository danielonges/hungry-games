/// @desc SlidesTransition(mode, targetroom)
/// @arg Mode sets transition mode between next, restart and goto.
/// @arg Target sets target room when using the goto mode.
function SlidesTransition(){
	oTransition.mode = argument0;
	with (oTransition) {
		if (argument_count > 1) {
			oTransition.target = argument1;
		}
	}
}