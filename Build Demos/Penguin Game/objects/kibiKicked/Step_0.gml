if global.paused = -1{
	x = x + direct * 20
	if place_meeting(x+(direct * 20), y, Ground){
		direct = direct -1	
	}
	y = y + global.eGravity
	if place_meeting(x,y+global.eGravity,Ground){
		y = y - global.eGravity	
	}
}