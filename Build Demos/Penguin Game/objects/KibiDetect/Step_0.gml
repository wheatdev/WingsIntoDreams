if global.paused = -1{
	if state = 0{
		if place_meeting(x,y,Kibi) or place_meeting(x,y,kibiKicked){
			timer = 0 	
		}
		else{
			timer = timer + 1
		}
		if timer > 200{
			state = 1
			timer = 0 
		}
	}
	if state = 1{
		instance_create_depth(x,y-2500,0,PekonStork)
		state = 2
	}
	if state = 2 and place_meeting(x,y,Kibi){
		state = 0	
	}
}