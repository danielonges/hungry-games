/// @description Move the camera view, follows and remains centered on the player

#region Move the camera view

global.camera_xview = camera_get_view_x(view_camera[0]);
global.camera_yview = camera_get_view_y(view_camera[0]);

halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2;

// stop the frame at the edge of the room
cameraX = clamp(x, halfViewWidth, room_width - halfViewWidth);
cameraY = clamp(y, halfViewHeight, room_height - halfViewHeight);

camera_set_view_pos(view_camera[0], cameraX - halfViewWidth, cameraY - halfViewHeight);

#endregion
