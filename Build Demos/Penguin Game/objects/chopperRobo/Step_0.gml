if global.paused = -1{
	if global.cameraActive = 1{
		visible = true
		if cHealth > 0{
			if place_meeting(x,y,DippSword) and allowHit = 0{
				cHealth = cHealth - global.dippAttack
				allowHit = 30
				if keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd){
					global.pBounce = 30
				}
			}
			if place_meeting(x,y,Dynamite) and allowHit = 0{
				cHealth = cHealth - (global.dippAttack * 2)
				allowHit = 40
			}
			if place_meeting(x,y,dippBeam1) and allowHit = 0{
				cHealth = cHealth - global.dippAttack
				allowHit = 5
			}
			if allowHit > 0{
				image_alpha = .5
				allowHit = allowHit - 1
			}
			else{
				image_alpha = 1
			}
			rangeX = abs(Player.x - x)
			rangeY = abs(Player.y - y)
			if rangeX < 1200{
				if rangeY < 300{
					gunPos = 1
				}
				else{
					gunPos = 2
				}
				if Player.x > x{
					xPos = 1
				}
				else{
					xPos = -1
				}
				if gunPos = 1{
					sprite_index = chopperBot1
					yDiff = 0 
					if rangeY < 200 and rangeX < 700{
						timer = timer + 1
					}
					if timer = 50{
						instance_create_depth(x,y,0,chopperShotH)
					}
					if timer = 55{
						instance_create_depth(x,y,0,chopperShotH)
					}
					if timer > 59{
						instance_create_depth(x,y,0,chopperShotH)
						timer = 0
					}
				}
				if gunPos = 2{
					sprite_index = chopperBot2
					yDiff = 500
					if abs(Player.y - y) < 700{
						timer = timer + 1
					}
					if timer = 50{
						instance_create_depth(x,y,0,chopperShotD)
					}
					if timer = 55{
						instance_create_depth(x,y,0,chopperShotD)
					}
					if timer > 59{
						instance_create_depth(x,y,0,chopperShotD)
						timer = 0
					}
				}
				if y < Player.y - yDiff{
					y = y + global.eGravity
				}
				else{
					y = y - global.eGravity	
				}
				if xPos = 1{
					if Player.x > x + xDiff{
						x = x + 14
						image_xscale = .2
					}
				}
				if xPos = -1{
					if Player.x < x - xDiff{
						x = x - 14
						image_xscale = -.2
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
	if global.cameraActive = -2{
		visible = false
	}
}