if global.paused = -1{
	if state = 0{
		size = size + .1
		if size > 12{
			state = 1
		}
		if place_meeting(x+(global.lastPressed*3.2),y,Player){
			Player.x = Player.x - 3.2
		}
	}
	if state = 1{
		size = size - .1
		if size < -2{
			state = 0	
		}
	}
	if size > 1 and size < 9{
		image_xscale = size
	}
}