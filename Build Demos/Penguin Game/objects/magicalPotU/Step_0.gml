if global.paused = -1{
	if place_meeting(x,y+global.eGravity,Player) or place_meeting(x-20,y,kibiKicked) or place_meeting(x+20,y,kibiKicked){ 
		if makeVine = 0{
			instance_create_depth(x,y,0,vineU)
			makeVine = 1
		}
		y = maxHeight - 40
	}
	y = y + 2
	if y > maxHeight{
		y = maxHeight
	}
}