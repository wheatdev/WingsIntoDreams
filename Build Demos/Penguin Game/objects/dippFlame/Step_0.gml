if global.paused = -1 and (global.cameraActive = 1 or global.cameraActive = -2){
	if global.dippSpecial = 7 and global.specialMeter > 3{
		x = Player.x
		y = Player.y
		image_xscale = global.lastPressed * -2
	}
	if keyboard_check_released(ord("P")) or keyboard_check_released(ord("C")) or gamepad_button_check_released(0,gp_face2) or global.specialMeter < 5{
		instance_destroy()	
	}
}