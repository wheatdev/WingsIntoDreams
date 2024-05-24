if global.paused = -1{
	if global.cameraActive = 1{
		rangeX = abs(Player.x - x)
		if global.dippSpecial = 2 and (keyboard_check(ord("P")) or keyboard_check(ord("Z"))){
			flyBy = 3000
		}
		else{
			flyBy = 1500
		}
		if rangeX < 200 and Player.y > (startY - flyBy) and y > Player.y{
			Player.y = Player.y - (global.eGravity * 1.5)
			if global.dippSpecial = 2 and (keyboard_check(ord("P")) or keyboard_check(ord("Z"))){
				Player.y = Player.y - global.eGravity
			}
		}
		
	}
}