/// @description Insert description here
// You can write your code in this editor

// Update Camera

// Rotate and pitch the camera using the mouse
if (mouse_check_button(mb_left))
{
	pitch_to += -( window_height * 0.5 - window_mouse_get_y() ) * 0.005;
	angle_to += -( window_width * 0.5 - window_mouse_get_x() ) * 0.1;
	
	// Set cursor to center of screen
	window_mouse_set(window_width/2, window_height/2);
}

// Rotate and pitch the camera using keyboard
pitch_to += (keyboard_check(vk_down) - keyboard_check(vk_up)) * 0.1;
angle_to += (keyboard_check(vk_right) - keyboard_check(vk_left)) * 4;

// Clamp our pitch
pitch_to = clamp(pitch_to, pitch_min, pitch_max);

// Update pitch and angle variables
pitch = lerp(pitch, pitch_to, 0.1);
angle = lerp(angle, angle_to, 0.1);

// Set the angle to the actual camera angle
camera_set_view_angle(view_camera[0], angle);
//show_debug_message(pitch);

// Pitch camera
camera_set_view_size(view_camera[0], original_w, original_h * pitch);
camera_set_view_pos(view_camera[0], 0, original_h * (1 - pitch) * 0.5);