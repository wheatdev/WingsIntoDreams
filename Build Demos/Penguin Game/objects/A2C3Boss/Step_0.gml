if global.paused = -1{
	if active = 0{
		y = y + 6
		if y > -3744{
			active = 1
		}
	}
	if active = 1{
		xPos = x	
		if aHealth > 0{
			global.cameraActive = -2
			if gravDirec = 1{
				y = y - global.eGravity
				if place_meeting(x,y-global.eGravity,Ground){
					y = y + global.eGravity
					gravDirec = irandom_range(1,4)
				}
			}
			if gravDirec = 2{
				x = x - global.eGravity
				if place_meeting(x-global.eGravity,y,Ground){
					x = x + global.eGravity
					gravDirec = irandom_range(1,4)
				}
			}
			if gravDirec = 3{
				y = y + global.eGravity	
				if place_meeting(x,y+global.eGravity,Ground){
					y = y - global.eGravity	
					gravDirec = irandom_range(1,4)
				}
			}
			if gravDirec = 4{
				x = x + global.eGravity	
				if place_meeting(x+global.eGravity,y,Ground){
					x = x - global.eGravity	
					gravDirec = irandom_range(1,4)
				}
			}
			timer = timer + 1
			if timer > timerCap{
				gravDirec = irandom_range(1,4)
				timer = 0 
			}
			if place_meeting(x,y,Player) and global.allowDamage = 0 and allowHit = 0 {
				if global.playAs = 1{
					global.dippHealth = global.dippHealth - 1
					audio_play_sound(dippHurtSE,0,false)
				}
				global.allowDamage = 90
				global.isDamaged = 10
			}
			if place_meeting(x,y,DippSword) and allowHit = 0{
				aHealth = aHealth - global.dippAttack
				if keyboard_check(ord("S")) or keyboard_check(vk_down){
					global.pBounce = 30	
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
		}
		else{
			audio_stop_all()
			audio_play_sound(hopperHelishipMusic,0,true)
			active= 2
		}
	}
	if  active= 2{
		global.cameraActive = 1
		global.mechanism = 10000
		y = y + global.eGravity
		image_angle = image_angle + 15
		image_alpha =1 
		if y > startY + 2000 and global.playerStartX > 28500{
			global.mechanism = 0
			instance_destroy()
		}
	}
}