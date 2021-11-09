draw_set_font(fMenu);

var offset = 2;
var textPosOffset = 180;
// text outline
draw_set_color(outlineColour);
draw_text(w_half-offset, h_half + textPosOffset, text);
draw_text(w_half+offset, h_half + textPosOffset, text);
draw_text(w_half, h_half-offset + textPosOffset, text);
draw_text(w_half, h_half+offset + textPosOffset, text);
// actual text
draw_set_color(textColour);
draw_text(w_half, h_half + textPosOffset, text);
	
draw_set_halign(fa_center);
draw_set_font(fMenu);
draw_set_alpha(1);
// text to continue
draw_text(w_half, h_half + textPosOffset + 100, textToContinue);
