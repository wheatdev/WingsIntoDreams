if global.paused = -1{
	if place_meeting(x,y-(global.eGravity*2),Player) and global.cameraActive = 1{
		Player.x = Player.x + 2.5
		timer = 50
	}
	else{
		if timer > 0 and global.cameraActive = 1{
			timer = timer - 1
			Player.x = Player.x + 2.5
		}
	}
}