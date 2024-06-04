if global.paused = -1{
	if global.cameraActive = 1{
		if state = 0{
			if (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)) and place_meeting(x,y,Player){
				state = 1
				global.cameraActive = -1
			}
		}
		if state = 1{
			global.playerStartX = 736
			global.playerStartY = 480
			global.cameraActive = 0
			room_goto(donnerShipInside)
		}
	}
}