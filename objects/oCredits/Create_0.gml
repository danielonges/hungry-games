/// @description GUI/Vars/Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 36;

menu_x = gui_margin;
menu_y = gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fInstructions;
menu_itemheight = font_get_size(fInstructions);
menu_committed = -1;

i = 0;
menu[i++] = "HUNGRY GAMES, 2021";
menu[i++] = "";
menu[i++] = "[Main Credits]";
menu[i++] = "Daniel Ong Ee Shaeon - Lead Programmer";
menu[i++] = "";
menu[i++] = "Joel Chin Jin En - Designer, Artist";
menu[i++] = "";
menu[i++] = "Tay Wan Tian, Celeste - Producer, Lead Artist";
menu[i++] = "";
menu[i++] = "Wong Chi Shan - QA Tester, Programmer";
menu[i++] = "";
menu[i++] = "[Additional Credits]";
menu[i++] = "Epidemic Sound - https://www.epidemicsound.com/track/bcbfzSviqh/";

done_btn = "> Press Esc to return to main menu";

menu_items = array_length(menu);