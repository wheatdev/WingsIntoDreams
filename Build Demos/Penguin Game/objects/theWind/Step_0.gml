if global.paused = -1{
	if global.cameraActive = 1{
		y = y - (global.eGravity/2)
		if place_meeting(x,y-(global.eGravity * 15),Ground){
			instance_destroy()
		}
		if place_meeting(x,y,Player) and Player.y > (startY - flyBy){
			Player.y = Player.y - (global.eGravity * 1.5)
		}
		if global.dippSpecial = 2 and (keyboard_check(ord("P")) or keyboard_check(ord("Z"))){
			flyBy = 3000
		}
		else{
			flyBy = 1500
		}
		if y < startY - 3000{
			instance_destroy()	
		}
	}
}