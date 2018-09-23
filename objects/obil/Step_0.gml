/// @description Insert description here
// You can write your code in this editor


aimAtMe = instance_find(oplayer,0)
	if instance_exists(aimAtMe) {
		aimDirection = direction;
		lineOfVision = abs(direction - aimDirection)


		if IHaveAClearLineOfViewTo(oplayer) && ( lineOfVision < 45 || 360 - lineOfVision < 45 ) {
	
			aimDirection = point_direction(x,y,aimAtMe.x,aimAtMe.y)
			
		}

			 if place_meeting(x + hspeed ,y + vspeed,obarrier) {
					direction = -direction;

		
			} else {
			
				image_angle = aimDirection
				direction = image_angle


		}
}