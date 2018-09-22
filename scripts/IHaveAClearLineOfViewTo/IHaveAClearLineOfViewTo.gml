Thing = argument0

Result = false

if instance_exists(Thing) && (collision_line(x,y, Thing.x, Thing.y,obarrier,true,true) = noone) {
	Result = true
}

return Result