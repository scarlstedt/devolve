/// @description Insert description here
// You can write your code in this editor
var hsp = keyboard_check(vk_right)-keyboard_check(vk_left);
var vsp = keyboard_check(vk_down)-keyboard_check(vk_up);

move(hsp*MySpeed, vsp*MySpeed);

var house = place_meeting(x,y,ohus);

if (house != noone) {
	RocksLeft = RocksLeft + house.sprite_order
}

/*direction = point_direction(x,y,mouse_x,mouse_y);
image_angle = direction;*/