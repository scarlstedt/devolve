/// @description Insert description here
// You can write your code in this editor


CollisionChecks = 0
dir = choose(1,-1)


while (place_meeting(x + hspeed, y + vspeed, obarrier)) && CollisionChecks <= 12 {
	direction = dir * direction + random_range(30,60)
	CollisionChecks = CollisionChecks + 1
}