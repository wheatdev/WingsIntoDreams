if global.paused = -1{
	if global.cameraActive = 1{
		if cHealth > 0{
			rangeX = abs(Player.x - x)
			rangeY = abs(Player.y - y)
			if grab = 0{
				roll = 0
				if rangeX < 2500 and rangeY < 500{
					if Player.x < x{
						x = x - 10
					}
					else{
						x = x + 10
					}
				}
				if rangeX < 200{
					if Player.y < y{
						y = y - global.eGravity
					}
					else{
						y = y + global.eGravity
					}
				}	
			}
			if grab = 1{
				Player.y = Player.y - global.eGravity
				if roll = 0{
					direct = irandom_range(1,3)
					roll = 1
				}
				if direct = 1{
					y = y - global.eGravity
					Player.y = Player.y - global.eGravity
					if place_meeting(x,y-global.eGravity,Ground){
						y = y + global.eGravity
						Player.y = Player.y + global.eGravity		
					}
				}
				if direct = 2{
					x = x - 10
					Player.x = Player.x- 10
					if place_meeting(x-10,y,Ground){
						x = x + 10
						Player.x = Player.x + 10
					}
				}
				if direct = 3{
					x = x + 10
					Player.x = Player.x + 10
					if place_meeting(x+10,y,Ground){
						x = x - 10
						Player.x = Player.x - 10
					}
				}
				if keyboard_check(ord("A")) or keyboard_check(vk_left) or  gamepad_button_check(0,gp_padl){
					if global.playAs = 1{
						Player.x = Player.x + global.dippSpeed
					}
				}
				if keyboard_check(ord("D")) or keyboard_check(vk_right) or gamepad_button_check(0,gp_padr){
					if global.playAs = 1{
						Player.x = Player.x - global.dippSpeed
					}
				}
			}
							
			if place_meeting(x,y+global.eGravity,Player){
				grab = 1
			}
			else{
				grab = 0
			}
		}
	}
	if global.cameraActive = -2{
		instance_destroy()
	}
}