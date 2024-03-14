if global.playAs = 1{
	if global.paused = -1{
		if global.dippHealth > 0{
			if inWater = 0{
				y = y + global.eGravity
				image_xscale = global.lastPressed/5
				image_yscale = global.eGravity/50
				image_angle = 0
				coyoteTime = coyoteTime - 1
				if place_meeting(x,y+global.eGravity,Ground){
					y = y - global.eGravity
					coyoteTime = 5
					maxHeight = y - (30 * global.eGravity)
					jumpState = 1
					if swordUse < 1{
						dippState = 1
					}
				}
				if place_meeting(x,y-global.eGravity,Ground){
					jumpState = 0
					coyoteTime = 0
					global.pBounce = 0
				}
				if keyboard_check(ord("A")) or keyboard_check(vk_left){
					x = x - global.dippSpeed
					if swordUse < 1
						dippState = 2
					}	
				if keyboard_check(ord("D")) or keyboard_check(vk_right){
					x = x+ global.dippSpeed
					if swordUse < 1{
						dippState = 2
					}
				}
				if place_meeting(x - global.dippSpeed,y,Ground){
					x = x + global.dippSpeed
				}		
				if place_meeting(x + global.dippSpeed,y,Ground){
					x = x - global.dippSpeed
				}

				if keyboard_check_released(vk_right) or  keyboard_check_released(vk_left) or  keyboard_check_released(ord("A")) or  keyboard_check_released(ord("D")){
					dippState = 1
				}
				if (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("I"))) and jumpState = 1{
					if coyoteTime > 0{
						jumpState = 2
						audio_play_sound(dippJumpSE,0,false)
					}
				}
				if jumpState = 2{
					if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down){
						instance_create_depth(x,y,0,DippSword)
						swordUse = -1
					}
					dippState = 3
					y = y - (global.eGravity * 2)
					if global.eGravity > 0{
						if y < maxHeight{
							dippState = 4
							jumpState = 0
						}
					}
					else{
						if y > maxHeight{
							dippState = 4
							jumpState = 0
						}
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
							x = x - (global.dippSpeed * 1.05)
							if place_meeting(x-(global.dippSpeed * 1.2),y,Ground){
								x = x + (global.dippSpeed * 1.2)
							}
						}
						if keyboard_check(ord("D")) or keyboard_check(vk_right){
							x = x + (global.dippSpeed * 1.05)
							if place_meeting(x+(global.dippSpeed * 1.2),y,Ground){
								x = x - (global.dippSpeed * 1.2)
							}
						}
					}
					else{
						if jumpState = 1{
							dippState = 5
						}
						else{
							dippState = 8
							swordUse = swordUse + 3
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
				if global.pBounce > 1{
					y = y - global.eGravity
					global.pBounce = global.pBounce - 1
					jumpState = 2
				}
				if jumpState = 0 and swordUse = 0{
					dippState = 4
				}
		
				if global.dippSpecial = 1{
					if keyboard_check(ord("P")) or keyboard_check(ord("C")){
						dippState = 10
						swordUse = -2
						if place_meeting(x,y+(global.eGravity * 3), Ground){
							global.pBounce = 45
						}
					}
				}
				if global.dippSpecial = 2{
					if (keyboard_check(ord("P")) or keyboard_check(ord("C")) and jumpState != 1){
						dippState = 11
						swordUse = -2
						y = y - (global.eGravity * .7)
					}
				}
				if place_meeting(x,y,waterSurface){
					swordUse = 0
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
					dippState = 9
				}
				if global.dippHealth > global.dippHealthMax{
					global.dippHealth = global.dippHealthMax
				}
				if global.dippHealth < 0{
					global.dippHealth = 0
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
				if dippState = 8{
					sprite_index = dippAirSword1
				}
				if dippState = 9{
					sprite_index = dippPain
				}
				if dippState = 10{
					sprite_index = dippSpring
				}
				if dippState = 11{
					sprite_index = dippGlide
				}
			}
			else{
				sprite_index = dippSwim
				image_xscale = global.lastPressed/5
				y = y + (global.eGravity/5)
				if place_meeting(x,y+(global.eGravity/5), Ground){
					y = y - (global.eGravity/5)
				}
				if keyboard_check(ord("W")) or keyboard_check(vk_up){
					y = y - global.dippSpeed
					if place_meeting(x,y,waterSurface){
						maxHeight = y - 250
						jumpState = 2
						inWater = 0
						swordUse = 0
						image_angle = 0
					}
				}
				if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z"))) and swordUse = 0{
					instance_create_depth(x,y,0,DippSword)
					swordUse = -1
				}
				if (keyboard_check_pressed(ord("O")) or keyboard_check_pressed(ord("X"))) and swordUse = 0{
					instance_create_depth(x,y,0,DippSword)
					swordUse = 1
				}
				if swordUse < 0{
					sprite_index = dippSwimSword11
					x = x + (global.lastPressed * global.dippSpeed * 1.5)
					if place_meeting(x+(global.lastPressed * global.dippSpeed * 1.5),y,Ground){
						x = x - (global.lastPressed * global.dippSpeed * 1.5)
					}
					if keyboard_check_released(ord("I")) or keyboard_check_released(ord("Z")){
						swordUse = 0
					}
				}
				if swordUse > 0{
					swordUse = swordUse + 1
					sprite_index = dippSwimSword21
					image_angle = image_angle + (-15 * global.lastPressed)
					if swordUse > 50{
						swordUse = 0
						image_angle = 0
					}
				}
				if keyboard_check(ord("S")) or keyboard_check(vk_down){
					y = y + global.dippSpeed
				}
				if keyboard_check(ord("A")) or keyboard_check(vk_left){
					x = x - global.dippSpeed
				}
				if keyboard_check(ord("D")) or keyboard_check(vk_right){
					x = x + global.dippSpeed
				}
				if place_meeting(x,y-global.dippSpeed,Ground){
					y = y + global.dippSpeed
				}
				if place_meeting(x,y+global.dippSpeed,Ground){
					y = y - global.dippSpeed
				}
				if place_meeting(x-global.dippSpeed,y,Ground){
					x = x + global.dippSpeed
				}
				if place_meeting(x+global.dippSpeed,y,Ground){
					x = x - global.dippSpeed
				}
			}
		}
		else{
			if global.isDamaged > 0{
				sprite_index = dippDeath1
			}
			if global.isDamaged < 0{
				sprite_index = dippDeath2
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
	if global.playAs = 3{
		instance_create_depth(x,y,0,Earnest)
		instance_destroy()
	}
}
if place_meeting(x,y,water){
	inWater = 1
}
else{
	inWater = 0
}