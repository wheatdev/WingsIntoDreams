if global.paused = -1 and global.cameraActive = 1{
	if active = 1{
		rangeX = abs(x - Player.x)
		rangeY = abs(y - Player.y)
		timer = timer + 1

		if timer > 200{
			if rangeX < 700 and rangeY < 700{
				if rangeY < 200{
					if Player.x < x{
						directX = -1
					}
					else{
						directX = 1
					}
				}
				if rangeX < 200{
					if Player.y < y{
						directY = -1
					}
					else{
						directY = 1
					}
				}
			}
			if rangeX < 500 and rangeY < 500{
				sting = 1	
			}
			timer = 0
		}
		if timer< 20{
			x = x + (directX * 7)
			y = y + (directY * 7)
		}
		if sting = 1{
			sprite_index = jellyfishsting
			if place_meeting(x,y,Player) and global.allowDamage = 0{
				if global.playAs = 1{
					global.dippHealth = global.dippHealth - 3
					audio_play_sound(dippHurtSE,0,false)
				}
				if global.playAs = 2{
					global.gumHealth = global.gumHealth - 5
				}
				global.allowDamage = 30
				global.isDamaged = 10	
			}
		}
		if (place_meeting(x,y,DippSword) or place_meeting(x,y,gumShoot)) and sting =0{
			active = 0
		}
		if rangeX > 2000 or rangeY > 2000{
			sting = 0
		}
	}
	else{
		y = y + global.eGravity
		image_angle = image_angle + 10
	}
}