if global.paused = -1{
	if global.cameraActive = 1{
		if state = 0{
			if Player.x > x{
				image_xscale = -1
			}
			else{
				image_xscale = 1
			}
			if (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or gamepad_button_check(0,gp_padu)) and place_meeting(x,y,Player){
				global.dialouge = 1
				global.cameraActive = -1
				global.lastSafeX = x - 300
				state =1
			}
		}
		if state = 1{
			global.talking = 1
		}
	}
	if timer > 1{
		sprite_index = dukeTalk
	}
	else{
		sprite_index = duke
	}		
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1)) and timer < 1{
		timer = 10
	}
	timer = timer - 1
}