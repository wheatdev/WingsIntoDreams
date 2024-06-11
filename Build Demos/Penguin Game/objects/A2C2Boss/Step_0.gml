if global.paused = -1{
	if active = 0{
		y = y + 6
		if y > -2816{
			active = 1
		}
	}
	if active = 1{
		xPos = x	
		if aHealth > 0{
			global.cameraActive = -2
			if place_meeting(x,y,Player) and global.allowDamage = 0 and allowHit = 0 {
				if global.playAs = 1{
					global.dippHealth = global.dippHealth - 1
					audio_play_sound(dippHurtSE,0,false)
				}
				global.allowDamage = 40
				global.isDamaged = 10
			}
			if place_meeting(x,y,DippSword) and allowHit = 0{
				aHealth = aHealth - global.dippAttack
				if keyboard_check(ord("S")) or keyboard_check(vk_down){
					global.pBounce = 20	
				}
				allowHit = 20
			}
			if place_meeting(x,y,Dynamite) and allowHit = 0{
				aHealth = aHealth - (global.dippAttack * 2)
				allowHit = 20
			}
			if allowHit > 0{
				allowHit = allowHit - 1
				image_alpha = .5
			}
			else{
				image_alpha = 1
			}
			if state < 4{
				y = y + global.eGravity
				if place_meeting(x,y+global.eGravity,Ground) or y > -2720{
					y = y - global.eGravity	
				}
			}
			if state = 0{
				if xPos > 17800{
					state = 1
				}
				else{
					state = 2	
				}
			}
			if state = 1{
				x = x - 14
				if place_meeting(x,y,theWind) and xPos < 17800{
					state = 3
				}
			}
			if state = 2{
				x = x + 14	
				if place_meeting(x,y,theWind) and xPos > 17800{ 
					state = 3
				}
			}
			if state = 3{
				y = y - (global.eGravity * 2)
				if y < -3200{
					instance_create_depth(x,y,0,A2CExpand)
					state = 4	
				}
			}
			if state = 4{
				if place_meeting(x,y,DippSword) or place_meeting(x,y,Dynamite){
					state = 0	
				}
			}
		}
		else{
			global.mechanism = 10000
			x = x + 1
			active= 2
		}
	}
	if  active= 2{
		y = y + global.eGravity
		image_angle = image_angle + 15
		image_alpha =1 
	}
}