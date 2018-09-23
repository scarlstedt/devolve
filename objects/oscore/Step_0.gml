/// @description Insert description here
// You can write your code in this editor

if ( state == "won" ) {
	
	with ogun1 {
		instance_destroy();
	}
	
	with obil {
		instance_destroy();
	}
	
	with ofiende {
		instance_destroy();
	}
}

if ( state == "starting" ) {
	if ( keyboard_check_pressed(ord("X")) == true )
		state = "playing";
}