if global.paused = -1{
	if pHealth > 1{
		y = y + global.eGravity
		coyoteTime = coyoteTime - 1
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity
			coyoteTime = 5
			maxHeight = y - 300
			jumpState = 1
		}
		if place_meeting(x,y-global.eGravity,Ground){
			jumpState = 0
			coyoteTime = 0
			global.pBounce = 0
		}
		if keyboard_check(ord("A")) or keyboard_check(vk_left){
			x = x - pSpeed
			if place_meeting(x - pSpeed,y,Ground){
				x = x +  pSpeed
			}	
		}
		if keyboard_check(ord("D")) or keyboard_check(vk_right){
			x = x+ pSpeed
			if place_meeting(x + pSpeed,y,Ground){
				x = x - pSpeed
			}
		}

		if keyboard_check_released(vk_right) or  keyboard_check_released(vk_left) or  keyboard_check_released(ord("A")) or  keyboard_check_released(ord("D")){
			pState = 1
		}
		if (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("I"))) and jumpState = 1{
			if coyoteTime > 0{
				jumpState = 2
			}
		}
		if jumpState = 2{
			pState = 3
			y = y - (global.eGravity * 2)
			if y < maxHeight{
				pState = 4
				jumpState = 0
			}
			if keyboard_check_released(ord("Z")) or keyboard_check_released(ord("I")){
				pState = 4
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
			pState = 9
		}
		if pHealth > pHealthMax{
			pHealth = pHealthMax
		}
		if global.allowDamage = 0{
			if place_meeting(x,y-global.eGravity,crusher){
				pHealth = pHealth - 10
				global.isDamaged = 15
				global.allowDamage = 100
			}
			if place_meeting(x,y+global.eGravity,spikes){
				pHealth = pHealth - 5
				global.pBounce = 20
				global.allowDamage = 20
				global.isDamaged = 15
			}
		}
	}
	else{
		global.isDamaged = global.isDamaged - 2
		y = y + global.eGravity
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity
		}
	}
}