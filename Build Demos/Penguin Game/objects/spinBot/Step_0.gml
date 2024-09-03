if global.paused = -1{
	if global.cameraActive = 1{
		if tHealth > 0{
			if place_meeting(x,y,DippSword) and allowHit = 0{
				tHealth = tHealth - global.dippAttack
				allowHit = 15
				if keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd){
					global.pBounce = 30
				}
			}
			if place_meeting(x,y,Dynamite) and allowHit = 0{
				tHealth = tHealth - (global.dippAttack * 2)
				allowHit = 20
			}
			if place_meeting(x,y,dippBeam1) and allowHit = 0{
				tHealth = tHealth - global.dippAttack
				allowHit = 5
			}
			if place_meeting(x,y,Player) and global.allowDamage = 0 and allowHit = 0{
				if global.playAs = 1{
					global.dippHealth = global.dippHealth - 3
					audio_play_sound(dippHurtSE,0,false)
				}
				global.allowDamage = 30
				global.isDamaged = 10
			}
			if allowHit > 0{
				allowHit = allowHit - 1
				image_alpha = .5
			}
			else{
				image_alpha = 1
			}
			rangeX = abs(Player.x - x)
			x = x + (direct * 20)
			y = y + global.eGravity
			if place_meeting(x,y+global.eGravity,Ground){
				y = y - global.eGravity
				jumpState = 1
				maxHeight = y - 450
			}
			if rangeX < 300 and (abs(Player.y - y) < 500){
				agressive = 1
			}
			if agressive = 1{
				timer = timer + 1
				if timer > 70{
					if Player.x > x{
						direct = 1
					}
					else{
						direct = -1
					}	
				timer = 0
				}
				if place_meeting(x+(direct*300),y,Ground) and jumpState = 1{
					jumpState = 2	
				}
			}
			if agressive = 0{
				if x < startX - 150{
					direct = 1
				}
				if x > startX + 150{
					direct = -1
				}
			}	
			if place_meeting(x+(direct*20),y,Ground){
				direct = direct * -1	
			}
			if jumpState = 2{
				y = y - global.eGravity * 2
				if y < maxHeight{
					jumpState = 0
				}
				if place_meeting(x,y-global.eGravity,Ground){
					jumpState = 0	
				}
			}
		}
		else{
			image_alpha= 1
			y = y + global.eGravity
			image_angle = image_angle + 15
		}
	}
}