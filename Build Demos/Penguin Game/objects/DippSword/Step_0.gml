if global.playAs = 1 and (global.cameraActive = 1 or global.cameraActive = -2){
	x = Dipp.x
	y = Dipp.y
	image_xscale = global.lastPressed
	if place_empty(x,y,water){
		if downStab = 0{
			swordUse = swordUse + 1
			if swordUse > 40{
				instance_destroy()
			}
			if place_meeting(x,y+(global.eGravity * 2),Ground){
				if keyboard_check(vk_left) or keyboard_check(vk_right) or keyboard_check(ord("A")) or keyboard_check(ord("D")) or gamepad_button_check(0,gp_padl) or gamepad_button_check(0,gp_padr){
					sprite_index = dippSword22
				}
				else{
					sprite_index = dippSword12
				}
			}
			else{
				if keyboard_check(vk_left) or keyboard_check(vk_right) or keyboard_check(ord("A")) or keyboard_check(ord("D")) or gamepad_button_check(0,gp_padl) or gamepad_button_check(0,gp_padr){
					sprite_index = dippSword22
				}
				else{
					sprite_index = dippAirSword2
					swordUse = swordUse + 3
				}
			}
		}

		if downStab = 1{
			sprite_index = dippSword32
			if place_meeting(x,y+global.eGravity,Ground){
				instance_destroy()
			}
		}
	}
	else{
		if keyboard_check(ord("I")) or keyboard_check(ord("Z")) or gamepad_button_check(0,gp_face3){
			sprite_index = dippSwimSword12
			if keyboard_check_released(ord("I")) or keyboard_check_released(ord("Z")) or gamepad_button_check_released(0,gp_face3){
				instance_destroy()	
			}
		}
		else{
			sprite_index = dippSwimSword22
			image_angle = image_angle + (-15 * global.lastPressed)
			swordUse = swordUse + 1
			if swordUse > 50{
				instance_destroy()
			}
		}
	}
}
else{
	instance_destroy()
}
