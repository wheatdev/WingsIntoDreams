if global.paused = -1{
	if eHealth > 0{
		shoot = shoot + 1
		if shoot = 55{
			instance_create_depth(x-30,y,0,springL)
			shoot = 0
		}
		if place_meeting(x,y,DippSword) and allowHit = 0{
			eHealth = eHealth - 1
			allowHit = 40
		}
		if allowHit > 0{
		allowHit = allowHit - 1	
		image_alpha = .5
		}
	}
	else{
		image_angle = image_angle - 5
		y = y + global.eGravity
	}
}