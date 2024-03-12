if global.paused = -1{
	if type = 1{
		if place_meeting(x,y,springCanonL){
			timer = 0
		}
		else{
			timer = timer + 1
			if timer = 100{
				instance_create_depth(x,y-600,0,springCanonL)
			}
		}
	}
	if type = 2{
		if place_meeting(x,y,springCanonR){
			timer = 0
		}
		else{
			timer = timer + 1
			if timer = 100{
				instance_create_depth(x,y-600,0,springCanonR)
			}
		}
	}
}