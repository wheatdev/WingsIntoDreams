	if global.paused = 1{
		visible = true
	}
	else{
		visible = false
	}
	x = pauseMenu.x
	y = pauseMenu.y - (100 + active)

	if global.pauseX = 1{
		active = -80
	}
	else{
		active = -100
	}
	if global.paused = 1 and global.pauseX = 1{
		if keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")){
			selectY = selectY - 1	
		}
		if keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")){
			selectY = selectY + 1	
		}
		if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")){
			if selectY = 1{
				if global.escapeRope = 1{
					global.playerStartX = 896
					global.playerStartY = 20
					global.paused = global.paused * -1
					global.escapeRope = 0
					room_goto(HUB1)
				}
			}
		}
	}
