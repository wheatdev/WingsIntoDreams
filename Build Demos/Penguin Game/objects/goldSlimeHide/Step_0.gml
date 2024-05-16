if global.paused = -1{
	if global.cameraActive = 1{
		rangeX = abs(Player.x - x)
		rangeY = abs(Player.y - y)
		if rangeY < 500{
			if rangeX < 600{
				sprite_index = slimePeek
			}
			else{
				sprite_index = slimeHide
			}
			if rangeX < 200 and rangeY < 200{
				instance_create_depth(x,y,0,goldSlime)	
				instance_destroy()
			}
		}
	}
}