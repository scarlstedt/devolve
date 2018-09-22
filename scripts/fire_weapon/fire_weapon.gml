/// FireWeapon(Type of bullet, bullet speed, kick speed, type of sound, spread of firing, screen shake, button)

TypeOfBullet = argument0
BulletSpeed = argument1
KickSpeed = argument2
TypeOfSound = argument3
Spread = argument4
Shake = argument5
Button = argument6

Firing = false
	
//if Owner.WeaponsCount > 0 {
	
	//if Owner.Weapon[Owner.WeaponSelected] = self.id {
		
		TimeSinceFiring = TimeSinceFiring + 1 / room_speed
		
		
		if Button = "left" {
			if gamepad_is_connected(0) {	
				Firing = gamepad_button_check(0,gp_shoulderl) || gamepad_button_check(0,gp_shoulderlb)
			} else {
				Firing = mouse_check_button(mb_left)
			} 
		} else if Button = "right" {
				if gamepad_is_connected(0) {	
				Firing = gamepad_button_check(0,gp_shoulderr) || gamepad_button_check(0,gp_shoulderrb)
			} else {
				Firing = mouse_check_button(mb_right)
			} 
		} else if Button = "always" {
			Firing = true
		}
		
		if Firing and TimeSinceFiring >= TimeBetweenFiring {
			
			TimeSinceFiring = 0

			/*if Shake > 0 {
				CameraShake(Shake)
			}*/
			myBullet = instance_create_depth(x, y,1,TypeOfBullet)

			myBullet.direction = point_direction(x,y,mouse_x, mouse_y) + random_range(Spread,-Spread)
			myBullet.image_angle = myBullet.direction
			myBullet.speed = BulletSpeed / room_speed

			/*Kick = KickSpeed / room_speed

			KickDirection = Owner.Facing + 180

			Owner.XShunt =  lengthdir_x(Kick, KickDirection)
			Owner.YShunt =  lengthdir_y(Kick, KickDirection)
	
			audio_play_sound(TypeOfSound,1,false)*/

		}	
	//}
		
//}