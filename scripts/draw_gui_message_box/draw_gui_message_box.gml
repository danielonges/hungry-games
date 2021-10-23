// Script adapted from https://www.youtube.com/watch?v=HdJ0ZUIs-AI&t=13s&ab_channel=ShaunSpalding
// works well only for draw GUI events
// cos of the font scaling...
function draw_gui_message_box(xPos, yPos, displayText, font, backgroundColour){
	maxlength = 200;

	draw_set_font(font);
	font_size = font_get_size(font);

	text_width = string_width_ext(displayText, font_size+(font_size/2), maxlength);
	text_height = string_height_ext(displayText, font_size+(font_size/2), maxlength);
	
	padding = 10;
	boxwidth = text_width + (padding*2);
	boxheight = text_height + (padding*2);
	halfboxwidth = boxwidth/2;
	xPos -= halfboxwidth;
	yPos -= boxheight + 70;
	
	draw_set_color(backgroundColour);
	draw_rectangle(xPos,yPos,xPos+boxwidth,yPos+boxheight,0);
	draw_set_color(c_black);
	draw_rectangle(xPos,yPos,xPos+boxwidth,yPos+boxheight,1);

	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_ext(xPos + padding, yPos + padding, displayText, font_size+(font_size/2), maxlength);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
}