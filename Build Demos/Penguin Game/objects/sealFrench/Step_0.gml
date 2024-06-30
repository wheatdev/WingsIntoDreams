if global.paused = -1 and global.cameraActive = 1{
	if state = 0{
		rangeX = abs(Player.x - x)
		rangeY = abs(Player.y - y)
		if rangeX < 1000 and rangeY < 500{
			global.lastSafeX = 33400
			state = 1
			global.cameraActive = -1
		}
		if state = 2{
			x = x - 30
		}
	}
}
if global.cameraActive = 0 and state = 1{
	view_camera[0] = camera_create_view(x- 800,y - 550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
	global.talking = 1
}
if global.talking = 1{

}
