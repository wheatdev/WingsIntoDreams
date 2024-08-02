if global.paused = -1{
	if fall = 1{
		y = y + 10
		if place_meeting(x,y+10,Ground){
			fall = 0	
		}
	}
	if fall = 0{
		if place_empty(x,y+1,Ground){
			y = y + 1
		}
	}
}