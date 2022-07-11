/// @description Insert description here
// You can write your code in this editor

// Camera Macros
#macro camera_x camera_get_view_x(view_camera[0])
#macro camera_y camera_get_view_y(view_camera[0])
#macro camera_width camera_get_view_width(view_camera[0])
#macro camera_height camera_get_view_height(view_camera[0])
#macro camera_angle camera_get_view_angle(view_camera[0])
#macro camera_pitch oCamera.pitch
	
#macro camera_up -camera_angle+90

//Screen macros
#macro window_height window_get_height()
#macro window_width window_get_width()
#macro display_width display_get_width()
#macro display_height display_get_height()
#macro gui_width display_get_gui_width()
#macro gui_height display_get_gui_height()

// Local variables
original_w = camera_width;
original_h = camera_height;
target = self;

// Pitch variables
pitch = 1;
pitch_min = 1;
pitch_max = 4;
pitch_to = pitch;

// Rotational variables
angle = 0;
angle_to = camera_angle;