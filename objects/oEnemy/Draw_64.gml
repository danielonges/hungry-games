/// @description Draw tutorial messages

// calculate position of GUI element to be above first enemies
if (global.in_tutorial) {
	carbText = "Carbs give you lots of energy!";
	if (instance_exists(firstCarb)) {
		carbGuiCoords = get_enemy_gui_coords(firstCarb);
		draw_gui_message_box(carbGuiCoords[0], carbGuiCoords[1] - 35, carbText, fGeneral, c_gray);
	}

	fatText = "Fats give you a little health and energy!";
	if (instance_exists(firstFat)) {
		fatGuiCoords = get_enemy_gui_coords(firstFat);
		draw_gui_message_box(fatGuiCoords[0], fatGuiCoords[1] - 35, fatText, fGeneral, c_gray);
	}

	proteinText = "Proteins give you health!";
	if (instance_exists(firstProtein)) {
		proteinGuiCoords = get_enemy_gui_coords(firstProtein);
		draw_gui_message_box(proteinGuiCoords[0], proteinGuiCoords[1] - 35, proteinText, fGeneral, c_gray);
	}
}
