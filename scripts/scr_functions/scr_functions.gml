// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function draw_sprite_stacked(_sprite, _x, _y)
{
	for (var i = 0; i < sprite_get_number(_sprite); i++)
	{
		var _lendir_x = lengthdir_x(i * camera_pitch, camera_up);
		var _lendir_y = lengthdir_y(i * camera_pitch, camera_up);
		
		draw_sprite(_sprite, i, _x + _lendir_x, _y + _lendir_y);
	}
}

function draw_sprite_stacked_ext(_sprite, _x, _y, _xscale, _yscale, _angle, _blend, _alpha)
{
	for (var i = 0; i < sprite_get_number(_sprite); i++)
	{
		var _lendir_x = lengthdir_x(i * camera_pitch, camera_up);
		var _lendir_y = lengthdir_y(i * camera_pitch, camera_up);
		
		draw_sprite_ext(_sprite, i, _x + _lendir_x, _y + _lendir_y, _xscale, _yscale, _angle, _blend, _alpha);
	}
}

function draw_sprite_billboard(_sprite, _index, _x, _y)
{
	draw_sprite_ext(_sprite, _index, _x, _y, 1, camera_pitch, -camera_angle, c_white, 1);
}

function draw_sprite_billboard_ext(_sprite, _index, _x, _y, _xscale, _yscale, _blend, _alpha)
{
	draw_sprite_ext(_sprite, _index, _x, _y, _xscale, _yscale * camera_pitch, -camera_angle, _blend, _alpha);
}

function depth_set_3d()
{
	depth = dot_product(x, y, lengthdir_x(1, camera_up), lengthdir_y(1, camera_up)) - 1000;	
}