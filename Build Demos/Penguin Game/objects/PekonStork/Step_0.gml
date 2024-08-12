if global.paused = -1{
	if state = 0{
		y = y + global.eGravity
		if place_meeting(x,y,KibiDetect) and create = 0{
			instance_create_depth(x,y,0,Kibi)
			state = 1
		}
	}
	if state = 1{
		y = y - global.eGravity
		if y < startY{
			instance_destroy()	
		}
	}
}