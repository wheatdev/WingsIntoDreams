if global.paused = -1{
	if global.cameraActive = 1{
		if state = 0{
			if (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or gamepad_button_check(0,gp_padu)) and place_meeting(x,y,Player){
				state = 1
				global.cameraActive = -1
				global.lastSafeX = x - 300
			}
			if Player.x > x + 200{
				state = 1
				global.cameraActive = -1
				global.lastSafeX = x + 300
				global.dialouge = 1
				global.lastPressed = -1
			}
		}
		if state = 1{
			global.playerStartX = 5950
			global.playerStartY = 5280
			global.talking = 1
		}
	}
}