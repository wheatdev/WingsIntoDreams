if global.paused = -1{
	if active = 0{
		y = y + 5
		if place_meeting(x,y+5,Ground) and y > -13120{
			if type = 1{
				active = 1	
			}
			else{
				active = 2
			}
		}
	}
	if active = 1{
		global.talking = 1
		global.cameraActive = -1
		if global.cutsceneTimer = -2{
			active = 2	
		}
	}
	if active = 2{
		global.talking = 0
		image_angle = image_angle + 10
	}
}