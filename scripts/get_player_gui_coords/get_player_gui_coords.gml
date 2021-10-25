// translates player's room coords to GUI coords
// so you can display things relative to the player in the GUI layer
function get_player_gui_coords(){
	display_scalex = display_get_gui_width()/(oPlayer.halfViewWidth*2);
	display_scaley = display_get_gui_height()/(oPlayer.halfViewHeight*2);
	xx = (oPlayer.x - camera_get_view_x(view_camera[0])) * display_scalex;
	yy = (oPlayer.y - camera_get_view_y(view_camera[0])) * display_scaley;
	return [xx, yy];
}