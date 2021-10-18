// Destroy persistent HUD instances
// e.g. when going back to rMenu room
function destroy_hud(){
	with (oEnergyBar) instance_destroy();
	with (oEnergyBarBorder) instance_destroy();
	with (oEnergyBarBackground) instance_destroy();
	with (oEnergyIcon) instance_destroy();
	with (oEnergyValue) instance_destroy();

	with (oHealthBar) instance_destroy();
	with (oHealthBarBorder) instance_destroy();
	with (oHealthBarBackground) instance_destroy();
	with (oHealthIcon) instance_destroy();
	with (oHealthValue) instance_destroy();

	with (oSpoonButton) instance_destroy();
	with (oForkButton) instance_destroy();
	with (oKnifeButton) instance_destroy();
}
