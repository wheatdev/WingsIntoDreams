if global.paused = -1 and global.cameraActive = 1{
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
			if keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd){
				global.pBounce = 35
			}
			eHealth = eHealth - global.dippAttack
			allowHit = 30
		}
		if place_meeting(x,y,dippBeam1) and allowHit = 0{
			eHealth = eHealth - global.dippAttack
			allowHit = 5
		}
		if place_meeting(x,y,Dynamite) and allowHit = 0{
			eHealth = eHealth - (global.dippAttack * 2)
			allowHit = 10
		}
		if place_meeting(x,y,gumShoot) and allowHit = 0{
			eHealth = eHealth - global.gumAttack
			allowHit = 10
		}
		if allowHit > 0{
		allowHit = allowHit - 1	
		image_alpha = .5
		}
		else{
			image_alpha = 1
		}
		y = y + global.eGravity
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity	
		}
	}
	else{
		image_angle = image_angle - 5
		image_speed = 0
		y = y + global.eGravity
		image_alpha = 1
	}
}