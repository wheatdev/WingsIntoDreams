if global.paused = -1{
	if global.cameraActive = 1 or global.cameraActive = -2{
		x = Player.x
		y = Player.y
	}
	size = size * 1.2
	if size > 200{
		size = 200
	}
	image_xscale = size * global.lastPressed
	if keyboard_check_released(ord("P")) or keyboard_check_released(ord("C")) or gamepad_button_check_released(0,gp_face2) or global.specialMeter < 5{
		instance_destroy()	
	}
}