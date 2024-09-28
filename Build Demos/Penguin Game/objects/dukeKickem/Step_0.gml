if global.paused = -1{
	if global.cameraActive = 1{
		if state = 0{
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
}