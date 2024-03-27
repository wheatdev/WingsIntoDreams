if global.cameraActive =1{
	if global.paused = 1{
		visible = true
	}
	else{
		visible = false
	}
	x = Player.x
	y = Player.y - (100 + active)

	if global.pauseX = 1{
		active = 20
	}
	else{
		active = 0
	}
}