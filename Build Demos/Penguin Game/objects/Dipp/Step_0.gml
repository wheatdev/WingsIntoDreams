if global.paused = -1{
	if global.dippHealth > 1{
		y = y + global.eGravity
		image_xscale = global.lastPressed/5
		coyoteTime = coyoteTime - 1
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity
			coyoteTime = 5
			maxHeight = y - 280
			jumpState = 1
			if swordUse < 1{
				dippState = 1
			}
		}
		if place_meeting(x,y-global.eGravity,Ground){
			jumpState = 0
			coyoteTime = 0
		}
		if keyboard_check(ord("A")) or keyboard_check(vk_left){
			x = x - global.dippSpeed
			if swordUse < 1
				dippState = 2
			}
			if place_meeting(x - global.dippSpeed,y,Ground){
				x = x + global.dippSpeed
			}			
		if keyboard_check(ord("D")) or keyboard_check(vk_right){
			x = x+ global.dippSpeed
			if swordUse < 1{
				dippState = 2
			}
			if place_meeting(x + global.dippSpeed,y,Ground){
				x = x - global.dippSpeed
			}
		}

		if keyboard_check_released(vk_right) or  keyboard_check_released(vk_left) or  keyboard_check_released(ord("A")) or  keyboard_check_released(ord("D")){
			dippState = 1
		}
		if (keyboard_check(ord("Z")) or keyboard_check(ord("I"))) and jumpState = 1{
			if coyoteTime > 0{
				jumpState = 2
				audio_play_sound(dippJumpSE,0,false)
			}
		}
		if jumpState = 2{
			if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down){
				swordUse = -1
			}
			dippState = 3
			y = y - (global.eGravity * 2)
			if y < maxHeight{
				dippState = 4
				jumpState = 0
			}
			if keyboard_check_released(ord("Z")) or keyboard_check_released(ord("I")){
				dippState = 4
				jumpState = 0
			}
		}
		if jumpState = 0{			
			if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down){
				instance_create_depth(x,y,0,DippSword)
				swordUse = -1
			}	
		}
		if keyboard_check_pressed(ord("O")) or keyboard_check_pressed(ord("X")) and swordUse = 0{
			instance_create_depth(x,y,0,DippSword)
			swordUse = 1
		}
		if swordUse > 0{
			swordUse = swordUse + 1
			if keyboard_check(ord("A")) or keyboard_check(ord("D")) or keyboard_check(vk_left) or keyboard_check(vk_right){
				dippState = 6
				if keyboard_check(ord("A")) or keyboard_check(vk_left){
					x = x - (global.dippSpeed * .2)
					if place_meeting(x-(global.dippSpeed * 1.2),y,Ground){
						x = x + (global.dippSpeed * 1.2)
					}
				}
				if keyboard_check(ord("D")) or keyboard_check(vk_right){
					x = x + (global.dippSpeed * .2)
					if place_meeting(x+(global.dippSpeed * 1.2),y,Ground){
						x = x - (global.dippSpeed * 1.2)
					}
				}
			}
			else{
				if jumpState = 1{
					dippState = 5
				}
			}
			if swordUse > 40{
				swordUse = 0
			}
		}
		if swordUse = -1{
			jumpState = 0
			dippState = 7
			y = y + global.eGravity
			if place_meeting(x,y+global.eGravity,Ground){
				swordUse = 0
			}
		}
		if jumpState = 0 and swordUse = 0{
			dippState = 4
		}
		if dippState = 1{
			sprite_index = dippStand
		}
		if dippState = 2{
			sprite_index = dippWalk
		}
		if dippState = 3{
			sprite_index = dippJump1
		}
		if dippState = 4{
			sprite_index = dippJump2
		}
		if dippState = 5{
			sprite_index = dippSword1
		}
		if dippState = 6{
			sprite_index = dippSword2
		}
		if dippState = 7{
			sprite_index = dippSword3
		}
	}
}