// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_self_3d(_sprite, _img_numb, _x, _y, _xscale, _yscale, _angle, _blend, _alpha)
{
	for (var i = 0; i < _img_numb; i++)
	{
		draw_sprite_ext(_sprite, i, _x, _y-i, _xscale, _yscale, _angle, _blend, _alpha);
	}
}