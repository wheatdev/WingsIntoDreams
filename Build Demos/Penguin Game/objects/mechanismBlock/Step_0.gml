if global.paused = -1{
	if place_meeting(x,y+(global.eGravity * 2),Player) or place_meeting(x-20,y,kibiKicked) or place_meeting(x+20,y,kibiKicked)or place_meeting(x-20,y,kibiKickedP) or place_meeting(x+20,y,kibiKickedP){
		global.mechanism = 500
		y = startY - 40
	}
	y = y + 2
	if y > startY{
		y = startY	
	}
}