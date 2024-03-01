if global.paused = -1{
	if eHealth > 0{
		range = abs(x - Player.x)
		shoot = shoot + 1
		if shoot = 55{
			shoot = 0
			if range < 1800{
				instance_create_depth(x-30,y,0,springL)
			}
		}
		if place_meeting(x,y,DippSword) and allowHit = 0{
			if keyboard_check(ord("S")) or keyboard_check(vk_down){
				global.pBounce = 20
			}
			eHealth = eHealth - global.dippAttack
			allowHit = 30
		}
		if allowHit > 0{
		allowHit = allowHit - 1	
		image_alpha = .5
		}
		else{
			image_alpha = 1
		}
	}
	else{
		image_angle = image_angle - 5
		y = y + global.eGravity
		image_alpha = 1
	}
}