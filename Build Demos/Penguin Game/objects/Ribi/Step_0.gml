if global.paused = -1{
	if rHealth > 0{
		image_xscale = direct * .2
		y = y + global.eGravity
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity	
			maxHeight = y - 500
			if place_meeting(x-(direct*32),y+64,Ground) and place_empty(x-(direct*32),y,Ground){
				x = x - (7* direct)
			}
			else{
				direct = direct * -1	
			}
		}
		if place_meeting(x,y,Player) and global.allowDamage = 0 and allowHit = 0{
			if global.playAs = 1{
				global.dippHealth = global.dippHealth - 1
				audio_play_sound(dippHurtSE,0,false)
			}
			global.allowDamage = 40
			global.isDamaged = 10
		}
		if place_meeting(x,y,DippSword) and allowHit = 0{
			rHealth = rHealth - global.dippAttack	
			allowHit = 30
			if keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd){
				global.pBounce = 20	
			}
		}
		if place_meeting(x,y,dippBeam1) and allowHit = 0{
			rHealth = rHealth - global.dippAttack
			allowHit = 5
		}
		if place_meeting(x,y,Dynamite) and allowHit = 0{
			rHealth = rHealth - (global.dippAttack * 2)
			allowHit = 50
		}
		if place_meeting(x,y,kibiKicked){
			rHealth = rHealth - 3
		}	
		if allowHit > 0{
			allowHit = allowHit - 1
			image_alpha = .5
		}
		else{
			image_alpha= 1
		}
	}
	else{
		image_alpha = 1
		y = y + global.eGravity
		image_angle = image_angle + 15
	}
}