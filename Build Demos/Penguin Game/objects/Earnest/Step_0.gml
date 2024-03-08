if global.playAs = 3{
	if global.paused = -1{
		if global.earnestHealth > 0{
			y = y + global.eGravity
			coyoteTime = coyoteTime - 1
			if place_meeting(x,y+global.eGravity,Ground){
				y = y - global.eGravity
				coyoteTime = 5
				maxHeight = y - 380
				jumpState = 1
			}
			if place_meeting(x,y-global.eGravity,Ground){
				jumpState = 0
				coyoteTime = 0
				global.pBounce = 0
			}
			if keyboard_check(ord("A")) or keyboard_check(vk_left){
				x = x - global.earnestSpeed
			}
			if keyboard_check(ord("D")) or keyboard_check(vk_right){
				x = x+ global.earnestSpeed
			}
			if place_meeting(x - global.earnestSpeed,y,Ground){
				x = x + global.earnestSpeed
			}		
			if place_meeting(x + global.earnestSpeed,y,Ground){
				x = x - global.earnestSpeed
			}

			if keyboard_check_released(vk_right) or  keyboard_check_released(vk_left) or  keyboard_check_released(ord("A")) or  keyboard_check_released(ord("D")){
				earnestState = 1
			}
			if (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("I"))) and jumpState = 1{
				if coyoteTime > 0{
					jumpState = 2
				}
			}
			if jumpState = 2{
				earnestState = 3
				y = y - (global.eGravity * 2)
				if y < maxHeight{
					dippState = 4
					jumpState = 0
				}
				if keyboard_check_released(ord("Z")) or keyboard_check_released(ord("I")){
					earnestState = 4
					jumpState = 0
				}
			}
			if global.pBounce > 1{
				y = y - global.eGravity
				global.pBounce = global.pBounce - 1
				jumpState = 2
			}

			global.allowDamage = global.allowDamage - 1
			global.isDamaged = global.isDamaged - 1
			if global.allowDamage < 0{
				global.allowDamage = 0
			}
			if global.isDamaged < 0{
				global.isDamaged = 0
			}
			if global.allowDamage > 1{
				image_alpha = .5
			}
			else{
				image_alpha = 1
			}
			if global.isDamaged > 0{
				earnestState = 9
			}
			if global.earnestHealth > global.earnestHealthMax{
				global.earnestHealth = global.earnestHealthMax
			}
			if global.earnestHealth < 0{
				global.earnestHealth = 0
			}
		}
		else{
			if global.isDamaged > 0{
				//sprite_index = dippDeath1
			}
			if global.isDamaged < 0{
				//sprite_index = dippDeath2
			}
			global.isDamaged = global.isDamaged - 2
			y = y + global.eGravity
			if place_meeting(x,y+global.eGravity,Ground){
				y = y - global.eGravity
			}
		}
	}
}
else{
	if global.playAs = 2{
		instance_create_depth(x,y,0,Gum)
		instance_destroy()
	}
	if global.playAs = 1{
		instance_create_depth(x,y,0,Dipp)
		instance_destroy()
	}
}