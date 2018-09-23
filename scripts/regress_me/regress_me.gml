/// regress_me

// arg
instance_destroy(other);

// Find out which sprite is being used

if ( sprite_order < max_sprite ) {
	sprite_order++;

	// Shift down to the next one in the list
	sprite_index = sprite_list[sprite_order];
} else {
	ogun.BulletsLeft = MAX_BULLETS;
	instance_destroy();
}


