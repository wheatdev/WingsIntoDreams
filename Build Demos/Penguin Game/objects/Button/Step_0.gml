if global.paused = -1{
	if activated = 0{
		if place_meeting(x,y-(global.eGravity * 2), Player){
			activated = 1
		}
	}
	if activated = 1{
		y = y + 2
		if y > startY + 40{
			if room = mineDownUnder{
				instance_create_depth(15328,-1184,depth,mpD)
			}
			activated = 2
		}
	}
	if activated = 2{
		y = startY + 40	
	}
}