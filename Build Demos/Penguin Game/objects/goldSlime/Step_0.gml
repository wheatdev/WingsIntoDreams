if global.paused = -1{
	if global.cameraActive = 1{
		if allowHit = 0{
			if attached = 0{
				rangeX = abs(Player.x - x)
				if place_meeting(x,y,Player){
					detachTimer = 50
					attached = 1
				}
				if place_meeting(x,y+global.eGravity,Ground){
					sprite_index = slimeOoze
					image_xscale = direct * -.2
					if abs(Player.x - x) < 100{
						image_xscale = -.2
					}
					if place_meeting(x,y,DippSword) and allowHit = 0{
						instance_create_depth(x+(direct*20),y,0,goldSlime)
						allowHit = 20
					}
					if rangeX < 1500{
						if Player.x > x{
							direct = 1
						}
						if Player.x < x{
							direct = -1
						}
						x = x + (direct * 7)
					}
					if place_meeting(x+(direct * 7),y,Ground){
						x = x - (direct * 7)
					}
				}
				else{
					sprite_index = slimeFall
					y = y + global.eGravity
				}
			}
			if attached = 1{
				sprite_index = slimeAttack
				x = Player.x
				y = Player.y
				if (global.playAs = 1 and global.dippHealth > 0){
					if keyboard_check(ord("A")) or keyboard_check(vk_left) or gamepad_button_check(0,gp_padl){
						Player.x = Player.x + 1
					}
					if keyboard_check(ord("D")) or keyboard_check(vk_right) or gamepad_button_check(0,gp_padr){
						Player.x = Player.x - 1
					}
				}
				hurtTimer = hurtTimer + 1
				if hurtTimer = 20{
					if global.playAs = 1{
						global.dippHealth = global.dippHealth - 1
					}
					hurtTimer = 0
				}
				detachTimer = detachTimer -1
				if detachTimer < 1{
					allowHit = 50
					attached = 0	
				}
			}
		}
		if allowHit > 0{
			allowHit = allowHit - 1	
		}
	}
}