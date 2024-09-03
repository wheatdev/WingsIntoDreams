if global.paused = -1{
	if global.cameraActive = 1{
	rangeX = abs(x - Player.x)
	rangeY = abs(y-Player.y)
	}
	if rangeX < 1500 and rangeY < 320 and global.skyUnlock = 1{
		global.talking = 1
		global.cameraActive = -1
		global.lastSafeX = x + 1000
		global.lastPressed = -1
	}
}