if global.paused = -1{
	if oHealth > 0{
		if (place_meeting(x,y,DippSword) or place_meeting(x,y,gumShoot)) and allowHit = 0{
			allowHit = 50
			if global.playAs = 1{
				oHealth = oHealth - global.dippAttack
			}
			if global.playAs = 2{
				oHealth = oHealth - global.gumAttack
			}
		}
		if place_meeting(x,y-global.eGravity,Icile) and allowHit = 0{
			oHealth = oHealth - 5
			allowHit = 50
		}
		if allowHit > 0{
			allowHit = allowHit - 1
			image_alpha = .5
		}
		else{
			image_alpha = 1
		}	
		if inWater = 1{
			rangeX = abs(Player.x - x)
			rangeY = abs(Player.y - y)
			if rangeX < 1500 and rangeY < 500{
				agroTimer = agroTimer + 1
				if agroTimer > 100{
					agressive = 1
					if agroTimer > 500{
						agroTimer = 500
					}
				}
			}
			else{
				agroTimer = agroTimer -1
				if agroTimer < 50{
					agressive = 0
				}
				if agroTimer < 1{
					agroTimer = 0	
				}
			}
			if agressive = 1{
				if Player.x < x{
					directX = 1
				}
				if Player.x > x{
					directX = -1	
				}
				if Player.y < y{
					directY = 1
				}
				else{
					directY = -1
				}
			}
			else{
				timer = timer + 1
				if timer > 70{
					directX = irandom_range(-2,1)
					if directX = -2{
						directX = -1
					}
					if directX = 0{
						directX = 1
					}
					directY = irandom_range(-1,1)
					timer = 0
				}
			}
			x = x - (directX * 7)
			if place_meeting(x-(directX*7),y,Ground){
				x = x + (directX * 7)
			}
			y = y - (directY * 7)
			if place_meeting(x,y-(directY*7),Ground){
				y = y + (directY * 7)
			}
			image_xscale = directX
			if abs(Player.x - x) < 100{
				image_xscale = 1
			}
			if place_meeting(x,y,Player) and global.allowDamage = 0 and allowHit = 0{
				if global.playAs = 1{
					global.dippHealth = global.dippHealth - 10
					audio_play_sound(dippHurtSE,0,false)
				}
				global.isDamaged = 10
				global.allowDamage = 200
			}
			if place_meeting(x,y,water){
				inWater = 1
			}
			else{
				inWater = 0
			}
		}
		else{
			y = y + global.eGravity
		}
	}
	else{
		y = y + global.eGravity
		image_alpha = 1
		image_angle = image_angle + 15
		drop = drop + 1
		if drop = 1{
			instance_create_depth(x,y,depth,donVal50)
		}
	}
}