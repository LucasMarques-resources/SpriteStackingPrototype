/// @description Insert description here
// You can write your code in this editor

var right, left, up, down
up = keyboard_check(ord("W"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
right = keyboard_check(ord("D"));

direction = camera_up;

spd = 0;

if (up || left || down || right)
{
	if (!(down && up) and !(right && left)) and (!(down && up && right && left))
		spd = move_spd;
}

var _dir = point_direction(0, 0, (right - left), (down - up)) - 90;

var _ldx = lengthdir_x(spd, direction + _dir);
var _ldy = lengthdir_y(spd, direction + _dir);

x += _ldx;
y += _ldy;