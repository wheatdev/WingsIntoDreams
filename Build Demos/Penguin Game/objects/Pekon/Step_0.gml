if global.paused = -1 and global.cameraActive = 1{
	if pHealth > 0{
		image_xscale = side * .25
		if place_meeting(x,y,Player) and global.allowDamage = 0 and allowHit = 0{
			if global.playAs = 1{
				global.dippHealth = global.dippHealth - 2
				audio_play_sound(dippHurtSE,0,false)
			}
			if global.playAs = 2{
				global.gumHealth = global.gumHealth - 1
			}
			global.allowDamage = 50
			global.isDamaged = 10
		}
		if place_meeting(x,y,DippSword) and allowHit = 0{
			pHealth = pHealth - global.dippAttack
			allowHit = 40
			if keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd){
				global.pBounce = 20	
			}
		}
		if place_meeting(x,y,Dynamite) and allowHit = 0{
			pHealth = pHealth - (global.dippAttack * 2)
			allowHit = 30
		}
		if place_meeting(x,y,dippBeam1) and allowHit = 0{
			pHealth = pHealth - global.dippAttack
			allowHit = 5
		}
		if place_meeting(x,y,gumShoot) and allowHit = 0{
			pHealth = pHealth - global.gumAttack
			allowHit = 30
		}
		if allowHit > 0{
			allowHit = allowHit -1
			image_alpha = .5
		}
		else{
			image_alpha = 1
		}
		rangeX = abs(x-Player.x)
		if rangeX < 2000{
			if state = 0{
				if Player.x > x{
					side = 1
				}
				else{
					side = -1
				}
				state = 1
			}
			else{
				if side = 1{
					x = x + 7
					if x > Player.x + 300{
						x = x - 7
						state = 1
					}
				}
				if side = -1{
					x = x - 7
					if x < Player.x - 300{
						x = x + 7
						state = 1
					}
				}	
			}
			if state = 1{
				y = y - global.eGravity
				if y < Player.y - 300{
					y = y + global.eGravity
				}
				timer = timer + 1
				if timer > 150{
					timer = 0
					startY = y
					side = side * -1
					state = 2
				}
			}
			if state = 2{
				y = y + global.eGravity/2
				if y > startY + 450{
					y = y - global.eGravity/2	
				}
			}
		}
	}
	else{
		image_alpha = 1
		y = y + global.eGravity
		image_angle = image_angle + 15
	}
}