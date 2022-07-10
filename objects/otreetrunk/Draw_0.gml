/// @description Insert description here
// You can write your code in this editor

// Draw trunk
draw_sprite_stacked_ext(sprite_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

// Draw leaves
draw_sprite_billboard_ext(sTreeLeaves, 0, x + lengthdir_x(46 * camera_pitch, camera_up), y + lengthdir_y(46 * camera_pitch, camera_up), 1, 1, c_white, 1);

if (global.debugMode)
{
	draw_circle_color(x, y, 5, c_red, c_red, false);
	draw_circle_color(x + lengthdir_x(46 * camera_pitch, camera_up), y + lengthdir_y(46 * camera_pitch, camera_up), 5, c_red, c_red, false);
}