if global.paused = -1 and global.cameraActive = 1{
	if sealHealth > 0{
		image_xscale = .3 * direct
		if abs(Player.x - x) < 50{
			image_xscale = .3
		}
		if inWater = 0{
			range = abs(x - Player.x)
			rangeY = abs(Player.y - y)
			y = y + global.eGravity
			if place_meeting(x,y+global.eGravity,Ground){
				y = y - global.eGravity
			}
			if angry = 0{
				if timer = 1{
					if range < 3000 and rangeY < 500{
						instance_create_depth(x,y,0,sealSnowball)
					}
				}
				if timer > 70{
					timer = 0
				}
				timer = timer + 1
			}
			else{
				sprite_index = sealMove
				x = x - (3 * direct)
				if place_meeting(x-(3*direct),y,Ground){
					x = x + (3 * direct)
				}
			}
		}
		else{
			sprite_index = sealSwim
		}
		if place_meeting(x,y,water){
			inWater = 1
		}
		else{
			inWater = 0
		}
		if place_meeting(x,y,Player) and global.allowDamage = 0 and allowHit = 0{
			if global.playAs = 1{
				global.dippHealth = global.dippHealth - 2
				audio_play_sound(dippHurtSE,0,false)
			}
			global.allowDamage = 30
			global.isDamaged = 10
		}
		if Player.x < x{
			direct = 1
		}
		else{
			direct = -1
		}
		if place_meeting(x,y,DippSword) and allowHit = 0{
			sealHealth = sealHealth - global.dippAttack
			allowHit = 30
			angry = 1
			y = y - global.eGravity
			if keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd){
				global.pBounce = 45
			}
		}
		if place_meeting(x,y,dippBeam1) and allowHit = 0{
			sealHealth = sealHealth - global.dippAttack
			allowHit = 5
		}
		if place_meeting(x,y,Dynamite) and allowHit = 0{
			sealHealth = sealHealth - (global.dippAttack * 2)
			allowHit = 50
			angry = 1
			y = y - global.eGravity
		}
		if place_meeting(x,y,Snowball) and allowHit = 0{
			sealHealth = sealHealth - 2
			allowHit = 50
		}
		if place_meeting(x,y,gumShoot) and allowHit = 0{
			sealHealth = sealHealth - global.gumAttack
			allowHit = 10
			angry = 1
			y = y - global.eGravity
		}
		if place_meeting(x,y,Orca){
			epicFlip = 1
		}
		if epicFlip = 1{
			sprite_index = sealMove
			y = y - (global.eGravity * 3)
			image_angle = image_angle + 15
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
		image_speed = 0
		image_angle = image_angle + 5
		y = y + global.eGravity
	}
}