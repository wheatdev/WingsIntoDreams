if global.paused = -1{
	if place_meeting(x,y-(global.eGravity * 2),Player){
		y = y + (global.eGravity)
	}
	y = y - global.eGravity/2
	if y < startY{
		y = startY	
	}
}