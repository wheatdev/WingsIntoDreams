if global.playAs = 2{
	if global.paused = -1{
		if global.gumHealth > 0{
			y = y + global.eGravity
			image_xscale = global.lastPressed
			image_yscale = global.eGravity/10
			coyoteTime = coyoteTime - 1
			if place_meeting(x,y+global.eGravity,Ground){
				y = y - global.eGravity
				coyoteTime = 5
				maxHeight = y - (25 * global.eGravity)
				jumpState = 1
			}
			if place_meeting(x,y-global.eGravity,Ground){
				jumpState = 0
				coyoteTime = 0
				global.pBounce = 0
			}
			if keyboard_check(vk_left) or keyboard_check(ord("A")) or gamepad_button_check(0,gp_padl){
				direct = -1
				if keyboard_check(vk_right) or keyboard_check(ord("D")) or gamepad_button_check(0,gp_padr){
					direct = 0	
				}
			}
			if keyboard_check(vk_right) or keyboard_check(ord("D")) or gamepad_button_check(0,gp_padr){
				direct = 1
				if keyboard_check(vk_left) or keyboard_check(ord("A")) or gamepad_button_check(0,gp_padl){
					direct = 0
				}
			}
				x = x + (global.gumSpeed * direct)
				if place_meeting(x+(global.gumSpeed * direct),y,Ground){
					x = x - global.gumSpeed * direct
					direct = 0
				}
				if place_meeting(x+(global.gumSpeed * global.lastPressed),y,Ground){
					x = x -	(global.gumSpeed * global.lastPressed)
				}	

			if keyboard_check_released(vk_right) or  keyboard_check_released(vk_left) or  keyboard_check_released(ord("A")) or  keyboard_check_released(ord("D")) or gamepad_button_check_released(0,gp_padl) or gamepad_button_check_released(0,gp_padr){
				gumState = 1
				direct = 0
			}
			if (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("I")) or gamepad_button_check_pressed(0,gp_face1)) and jumpState = 1{
				if coyoteTime > 0{
					jumpState = 2
				}
			}
			if jumpState = 2{
				y = y - (global.eGravity * 2)
				if global.eGravity > 0{
					if y < maxHeight{
						gumState = 4
						jumpState = 0
					}
				}
				else{
					if y > maxHeight{
						gumState = 4
						jumpState = 0
					}
				}
				if keyboard_check_released(ord("Z")) or keyboard_check_released(ord("I")) or gamepad_button_check_released(0,gp_face1){
					gumState = 4
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
				gumState = 9
			}
			if global.gumHealth > global.gumHealthMax{
				global.gumHealth = global.gumHealthMax
			}
			if global.gumHealth < 0{
				global.gumHealth = 0
			}
			
			if global.gumSpecial = 1{
				if (keyboard_check(ord("P")) or keyboard_check(ord("C")) or gamepad_button_check(0,gp_face2)) and global.specialMeter > 0{
					gumState = 2
					x  = x + ((global.gumSpeed * 1.25) * global.lastPressed)
					global.specialMeter = global.specialMeter - .2
					if jumpState = 1{
						jumpState = 1
					}
					else{
						y = y - (global.eGravity * .2)
					}
					if place_meeting(x+((global.gumSpeed * 1.25) * global.lastPressed),y,Ground){
						x = x - ((global.gumSpeed * 1.25) * global.lastPressed)
					}
				}
				if (keyboard_check_released(ord("P")) or keyboard_check_released(ord("C")) or gamepad_button_check_released(0,gp_face2)){
					gumState = 1
				}
			}
			if global.gumSpecial = 2{
				if (keyboard_check(ord("P")) or keyboard_check(ord("C")) or gamepad_button_check(0,gp_face2)) and global.specialMeter > 0 and place_empty(x,y-(global.eGravity*2.5),Ground){
					y = y - (global.eGravity * 2.5)
					gumState = 3
					global.specialMeter = global.specialMeter - .5
				}
				if (keyboard_check_released(ord("P")) or keyboard_check_released(ord("C")) or gamepad_button_check_released(0,gp_face2)){
					gumState = 1
				}
			}
			if global.gumSpecial = 3{
				if keyboard_check_pressed(ord("P")) or keyboard_check_pressed(ord("C")) or gamepad_button_check_pressed(0,gp_face2){
					gravSwap = gravSwap * -1	
				}
				if gravSwap = 1{
					global.eGravity = 10
				}
				else{
					global.eGravity = -10
					global.specialMeter = global.specialMeter - 1
					if global.specialMeter < 2{
						gravSwap = 1	
					}
				}
			}
			
		if gumState = 0 or gumState = 1{
			sprite_index = A2CStand	
		}	
		if gumState = 2{
			sprite_index = A2CDash
		}
		if gumState = 3{
			sprite_index = A2CJet
		}
		if place_meeting(x,y,collectableSpecial){
			global.itemGet = 1
			instance_create_depth(Player.x,Player.y,0,playerCutscene)
			global.cameraActive = 0 
			instance_destroy()
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
	if global.playAs = 1{
		instance_create_depth(x,y,0,Dipp)
		instance_create_depth(x,y,0,dippScarf)
		instance_destroy()
	}
	if global.playAs = 3{
		instance_create_depth(x,y,0,Earnest)
		instance_destroy()
	}
}
if global.cameraActive = -1{
	instance_create_depth(x,y,depth,playerCutscene)
	instance_destroy()
}