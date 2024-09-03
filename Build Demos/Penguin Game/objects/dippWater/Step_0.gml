if global.paused = -1 and (global.cameraActive = 1 or global.cameraActive = -2){
	if global.dippSpecial = 8 and global.specialMeter > 1{
		x = Player.x 
		y = Player.y
		global.specialMeter = global.specialMeter - 1
	}
	if (keyboard_check_released(ord("P")) or keyboard_check_released(ord("C")) or gamepad_button_check_released(0,gp_face2)) or global.specialMeter < 2 or global.dippSpecial != 8{
		instance_destroy()
	}
}