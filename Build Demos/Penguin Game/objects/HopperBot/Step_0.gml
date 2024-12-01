if global.paused = -1{
	if global.cameraActive = 1{
		if bHealth > 0{
			image_xscale = direct * -1
			rangeX = abs(Player.x - x)
			rangeY = abs(Player.y - y)
			if place_meeting(x,y,Player) and global.allowDamage  = 0 and allowHit = 0{
				if global.playAs = 1{
					global.dippHealth = global.dippHealth - 3
					audio_play_sound(dippHurtSE,0,false)
				}
				if global.playAs = 2{
					global.gumHealth = global.gumHealth - 2	
				}
				global.allowDamage = 50
				global.isDamaged = 10
			}
			if place_meeting(x,y,DippSword) and allowHit = 0{
				bHealth = bHealth - global.dippAttack
				allowHit = 15
				if keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd){
					global.pBounce = 30
				}
			}
			if place_meeting(x,y,dippBeam1) and allowHit = 0{
				bHealth = bHealth - global.dippAttack
				allowHit = 5
			}
			if place_meeting(x,y,Dynamite) and allowHit = 0{
				bHealth = bHealth - (global.dippAttack * 2)
				allowHit = 20
			}
			if place_meeting(x,y,kibiKickedP) and allowHit = 0{
				bHealth = bHealth - (global.dippAttack * 2)
				allowHit = 30
			}
			if place_meeting(x,y,gumShoot) and allowHit = 0{
				bHealth = bHealth - global.gumAttack
				allowHit = 10
			}
			if allowHit > 0{
				image_alpha = .5
				allowHit = allowHit - 1
				x = x - (direct * 14)
				if place_meeting(x-(direct*14),y,Ground){
					x = x + (direct * 14)
				}
			}
			else{
				image_alpha = 1
			}
			if grounded = 1{
				if place_meeting(x,y+global.eGravity,Ground){
					x = x + (direct * 12)
				}
				else{
					grounded = 0
				}
				if agressive = 0{
					if place_meeting(x+(direct * 12),y,Ground){
						direct = direct * -1	
					}
					if place_empty(x+(direct * 100),y+global.eGravity,Ground){
						direct = direct * -1
					}
					if rangeX < 700 and rangeY < 200{
						if Player.x < x and direct = -1{
							agressive = 1
						}
						if Player.x > x and direct = 1{
							agressive = 1
						}
					}
				}
				else{ 
					timer = timer + 1
					if timer > 50{
						instance_create_depth(x,y,0,HopBeam)
						timer = 0	
					}
					if Player.x > x{
						direct = 1
					}
					else{
						direct = -1
					}
					if place_meeting(x+(direct * 12),y,Ground){
						x = x - (direct * 12)	
					}
					if rangeX > 1000{
						agressive = 0	
					}
				}
			}
			else{
				y = y + global.eGravity
				if place_meeting(x,y+global.eGravity,Ground){
					grounded = 1	
				}
			}
		}
		else{
			image_angle = image_angle + (direct * 15)
			y = y + global.eGravity
			image_alpha = 1
		}
	}
}