if global.paused = -1{
	if place_meeting(x,y,Player){
		timer = timer + 1
		if timer > 40{
			pushForce = pushForce + 1	
			if pushForce > 10{
				pushForce = 10
			}
		}
		Player.x = Player.x - pushForce
	}
	else{
		timer = 0
		pushForce = 0
	}
}