if global.paused = -1{
	if global.cameraActive = 1{
		if state = 0{
			if (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or gamepad_button_check(0,gp_padu)) and place_meeting(x,y,Player){
				audio_stop_all()
				audio_play_sound(captainDonnerMusic,0,true)
				state = 1
				global.cameraActive = -1
				global.lastSafeX = x - 300
			}
			if Player.x > x + 200{
				audio_stop_all()
				audio_play_sound(captainDonnerMusic,0,true)
				state = 1
				global.cameraActive = -1
				global.lastSafeX = x + 300
				global.dialouge = 1
				global.lastPressed = -1
				image_xscale = -1
			}
		}
		if state = 1{
			global.playerStartX = 5950
			global.playerStartY = 5248
			global.talking = 1
		}
	}
	else{
		if timer > 1{
			sprite_index = donnerTalk
		}
		else{
			sprite_index = donnerStand
		}		
	}
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1)) and timer < 1{
		timer = 10
	}
	timer = timer - 1
}