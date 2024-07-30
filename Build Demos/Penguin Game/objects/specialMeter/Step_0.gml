if global.paused = -1 and (global.cameraActive = 1 or global.cameraActive = -2) and hide = -1{
	x = HUD.x - 127
	y = HUD.y - 2
	image_xscale = global.specialMeter/20
	visible = true
}
else{
	visible = false	
}
if keyboard_check_pressed(ord("H")) or gamepad_button_check_pressed(0,gp_select){
	hide = hide * -1
}