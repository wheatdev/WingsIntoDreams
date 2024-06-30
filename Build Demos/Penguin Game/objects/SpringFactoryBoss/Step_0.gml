if global.paused = -1{
	if bHealth > 0{
		if place_meeting(x,y,DippSword) and allowHit = 0{
			bHealth = bHealth - global.dippAttack
			allowHit = 120
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
		if bHealth < 6 and removeSpecial = 0{
			instance_create_depth(675,y,0,specialRemoval)
			removeSpecial = 1
		}
		if runAwayX = 1{
			if Player.x < x{
				x = x + 3
			}
			if Player.x > x{
				x = x - 3
			}
			if x < 1664{
				x  = 1664
			}
			if x > 2400{
				x = 2400
			}
		}
		if runAwayY = 1{
			y = y - 3
			if y < 1824{
				y = 1824
			}
		}
		else{
			if y < 2014{
				y = y + 3
			}
		}
	}
	else{
		if createTreasure = 0{
			instance_create_depth(x,y,0,finalTreasure)
			createTreasure = 1
		}
	}
}