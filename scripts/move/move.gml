/// move(hsp, vsp)

var hsp = argument0
var vsp = argument1


if grid_place_meeting(x+hsp, y) {
	while !(grid_place_meeting(x+sign(hsp), y)) {
		x+=sign(hsp)
	}
	hsp=0
}
// horozontal
x += hsp

if grid_place_meeting(x, y+vsp) {
	while !(grid_place_meeting(x, y+sign(vsp))) {
		y+=sign(vsp)
	}
	vsp=0
}

// vertical
y += vsp