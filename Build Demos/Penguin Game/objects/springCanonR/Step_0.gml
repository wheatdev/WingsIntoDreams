if global.paused = -1{
	if eHealth > 0{
		shoot = shoot + 1
		if shoot = 55{
			instance_create_depth(x+30,y,0,springR)
			shoot = 0
		}
		if place_meeting(x,y,DippSword) and allowHit = 0{
			if keyboard_check(ord("S")) or keyboard_check(vk_down){
				global.dippBounce = 20
			}
			eHealth = eHealth - 1
			allowHit = 40
		}
		if allowHit > 0{
		allowHit = allowHit - 1	
		}
	}
	else{
		image_angle = image_angle - 5
		y = y + global.eGravity
	}
}