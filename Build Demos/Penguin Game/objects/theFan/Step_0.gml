if global.paused = -1{
	if global.cameraActive = 1{
		timer = timer + 1
		if timer = 60{
			instance_create_depth(x,y,0,theWind)
			timer = 0
		}
	}
}