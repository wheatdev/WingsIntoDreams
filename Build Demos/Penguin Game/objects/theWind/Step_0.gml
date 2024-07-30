if global.paused = -1{
	if global.cameraActive = 1 or global.cameraActive = -2{
		y = y - (global.eGravity/2)
		if place_meeting(x,y-(global.eGravity * 15),Ground){
			instance_destroy()
		}
		if place_meeting(x,y,Player) and Player.y > (startY - flyBy){
			Player.y = Player.y - (global.eGravity * 1.5)
		}
		if global.dippSpecial = 2 and (keyboard_check(ord("P")) or keyboard_check(ord("Z")) or gamepad_button_check(0,gp_face2)){
			flyBy = 3000
			y = y - (global.eGravity/2)
			if place_meeting(x,y,Player) and Player.y > (startY - flyBy){
				Player.y = Player.y - (global.eGravity * 1.5)
			}
		}
		else{
			flyBy = 1500
		}
		if y < startY - 3000{
			instance_destroy()	
		}
	}
}