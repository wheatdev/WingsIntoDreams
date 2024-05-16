if global.paused = -1{
	if global.cameraActive = 1{
		rangeX = abs(Player.x - x)
		rangeY = abs(Player.y - y)
		if rangeX < 200 and rangeY < 700{
			instance_create_depth(x,y+40,0,goldSlime)	
			instance_destroy()
		}
	}
}