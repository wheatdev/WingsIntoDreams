if global.paused = -1{
	if active = 0{
		y = y + 6
		if y > startY + 704{
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
				if global.playAs = 2{
					global.gumHealth = global.gumHealth - 1	
				}
				global.allowDamage = 40
				global.isDamaged = 10
			}
			if place_meeting(x,y,DippSword) and allowHit = 0{
				aHealth = aHealth - global.dippAttack
				if keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd){
					global.pBounce = 20	
				}
				allowHit = 20
			}
			if place_meeting(x,y,Dynamite) and allowHit = 0{
				aHealth = aHealth - (global.dippAttack * 2)
				allowHit = 20
			}
			if place_meeting(x,y,kibiKickedP) and allowHit = 0{
				aHealth = aHealth - (global.dippAttack * 2)
				allowHit = 30
			}
			if place_meeting(x,y,dippBeam1) and allowHit = 0{
				aHealth = aHealth - global.dippAttack
				allowHit = 5
			}
			if place_meeting(x,y,gumShoot) and allowHit = 0{
				aHealth = aHealth - global.gumAttack
				allowHit = 40
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
				if place_meeting(x,y+global.eGravity,Ground) or y > startY + 800{
					y = y - global.eGravity	
				}
			}
			if state = 0{
				if xPos > startX - 472{
					state = 1
				}
				else{
					state = 2	
				}
			}
			if state = 1{
				x = x - 14
				image_xscale = 1
				if place_meeting(x,y,theWind) and xPos < startX - 472{
					state = 3
				}
			}
			if state = 2{
				x = x + 14	
				image_xscale = -1
				if place_meeting(x,y,theWind) and xPos > startX - 472{ 
					state = 3
				}
			}
			if state = 3{
				image_speed = 0
				y = y - (global.eGravity * 2)
				if y < startY + 520{
					instance_create_depth(x,y,0,A2CExpand)
					image_speed = 1
					image_xscale = image_xscale * -1
					state = 4	
				}
			}
			if state = 4{
				sprite_index = A2C2Attack
				if place_meeting(x,y,DippSword) or place_meeting(x,y,Dynamite) or place_meeting(x,y,dippBeam1){
					sprite_index = A2C2
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