/// @description GUI/Vars/Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_margin;
menu_y = gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;

menu[0] = "Controls:";
menu[1] = "WASD - Movement";
menu[2] = "Spacebar - Jump";
menu[3] = "J - Spoon attack";
menu[4] = "K - Fork attack (5s cooldown, 2 energy)";
menu[5] = "L - Knife attack (10s cooldown, 3 energy)";
menu[6] = "Q - Back to main menu";

done_btn = "> Press enter to return to main menu";

menu_items = array_length(menu);
