if global.paused = -1{
	if bHealth > 0{
		if place_meeting(x,y,DippSword) and allowHit = 0{
			bHealth = bHealth - global.dippAttack
			allowHit = 100
			if global.pBounce > 0{
				runAwayY = 1
				runAwayX = 1
			}
			if keyboard_check(ord("S")) or keyboard_check(vk_down){
				global.pBounce = 20
				runAwayY = 1
			}
			else{
				runAwayX = 1
			}
		}
		if place_meeting(x,y,Dynamite) and allowHit = 0{
			bHealth = bHealth  - (global.dippAttack * 2)
			allowHit = 150
			runAwayX = 1
		}
		if place_meeting(x,y,gumShoot) and allowHit = 0{
			bHealth = bHealth - global.gumAttack
			allowHit = 150
			runAwayX = 1
		}

		if allowHit > 0{
			allowHit = allowHit - 1
			image_alpha = .5
		}
		else{
			image_alpha = 1
			runAwayX = 0
			runAwayY = 0
		}

		if runAwayX = 1{
			if Player.x < x{
				x = x + 3
			}
			if Player.x > x{
				x = x - 3
			}
			if x < 288{
				x  = 288
			}
			if x > 1088{
				x = 1088
			}
		}
		if runAwayY = 1{
			y = y - 3
			if y < -160{
				y = -160
			}
		}
		else{
			if y < 32{
				y = y + 3
			}
		}
	}
	else{
		if createTreasure = 0{
			instance_create_depth(x,y,0,springFactoryTreasure)
			createTreasure = 1
		}
	}
}