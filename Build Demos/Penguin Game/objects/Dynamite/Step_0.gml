if global.paused = -1{
	if inWater = 0{
		if state = -1{
			timer = timer -1
			if timer < 0{
				instance_destroy()
			}
		}
		if state = 0{
			timer = timer + 1
			if global.cameraActive = 1{
				x = Player.x
			}
			if timer = 10{
				visible = true
				state = 1
			}
		}
		if state = 1{
			y = y - 3
			if y < maxHeight{
				state = 2
			}
		}
		if state = 2{
			y = y + 5
		}
		if state > 0{
			x = x + (direct * 20)
		}
		image_angle = image_angle - (direct * 10) 
		if place_meeting(x,y,Ground){
			instance_destroy()
		}
		if place_meeting(x,y,Enemy){
			timer = 10
			state = -1
		}
		if global.dippHealth < 1 or global.gumHealth < 1{
			instance_destroy()	
		}
	}
	else{
		image_angle = image_angle + 2
		y = y + 5
	}
	if place_meeting(x,y,water){
		inWater = 1
	}
}