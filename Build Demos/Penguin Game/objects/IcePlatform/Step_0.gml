if global.paused = -1{
	if place_meeting(x,y-global.eGravity*2, Player) or place_meeting(x,y-global.eGravity*2, seal){
		y = y + 3
		if y > startY +40{
			y = y - 3
		}
	}
	else{
		y = y - 3
		if y < startY{
			y = y + 3
		}
	}
}