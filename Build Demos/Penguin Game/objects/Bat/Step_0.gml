if global.paused = -1{
	if global.cameraActive = 1{
		if bHealth > 0{
			rangeX = abs(x - Player.x)
			rangeY = abs(y - Player.y)
			if place_meeting(x,y,Player) and global.allowDamage = 0 and allowHit = 0{
				if global.playAs = 1{
					global.dippHealth = global.dippHealth - 2
					global.allowDamage = 40
					global.isDamaged = 10
					audio_play_sound(dippHurtSE,0,false)
				}
			}
			if place_meeting(x,y,DippSword) and allowHit = 0{
				bHealth = bHealth - global.dippAttack
				allowHit = 20
				if keyboard_check(ord("S")) or keyboard_check(vk_down){
					global.pBounce = 30	
				}
			}
			if place_meeting(x,y,Dynamite) and allowHit = 0{
				bHealth = bHealth - (global.dippAttack * 2)
				allowHit = 30
			}
			if allowHit > 0{
				image_alpha = .5
				allowHit = allowHit - 1
			}
			else{
				image_alpha = 1
			}
			if flightMode = 0{
				maxHeight = y + 450
				sprite_index = batHang
				if Player.x < x{
					gotoX = -1
				}
				else{
					gotoX = 1
				}
				if rangeY < 500 and rangeX < 1000{
					flightMode = 1	
				}
			}
			else{
				if gotoX = -1{
					x = x - 7
					image_xscale = .2
				}
				if gotoX = 1{
					x = x + 7	
					image_xscale = -.2
				}
				if place_meeting(x+(7*gotoX),y,Ground){
					gotoX = gotoX * -1
				}
			}
			if flightMode = 1{
				sprite_index = batFly
				y = y + 7
				if y > maxHeight or place_meeting(x,y+7,Ground){
					flightMode = 2
				}
			}
			if flightMode = 2{
				y = y - 7
				if place_meeting(x,y-7,Ground){
					flightMode = 0
				}
			}
		}
		else{
			if roll = 0{
				randDrop = irandom_range(0,10)
				if randDrop = 10{
					instance_create_depth(x,y,0,heal2)
				}
				if randDrop = 9 or randDrop = 8{
					instance_create_depth(x,y,0,heal1)
				}
				roll = 1
			}
			image_alpha = 1
			sprite_index = batFly
			image_angle = image_angle + 5
			y = y + global.eGravity
			if y > maxHeight + 3000{
				instance_destroy()
			}
		}
	}
}