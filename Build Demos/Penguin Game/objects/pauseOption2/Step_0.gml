	if global.paused = 1{
		visible = true
	}
	else{
		visible = false
		if global.playAs = 1{
			if global.dippSpecial = 0{
				selectX = 1
				selectY = 1
			}
			if global.dippSpecial = 1{
				selectX = 2
				selectY = 1
			}
			if global.dippSpecial = 2{
				selectX = 1
				selectY = 2
			}
			if global.dippSpecial = 3{
				selectX = 2
				selectY = 2
			}
		}
		if global.playAs = 2{
			if global.gumSpecial = 0{
				selectX = 1
				selectY = 1
			}
			if global.gumSpecial = 1{
				selectX = 2
				selectY = 1
			}
		}
	}
	x = pauseMenu.x
	y = pauseMenu.y - (100 + active)

	if global.pauseX = 2{
		active = -80
			if selected = 1{
			if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down){
				selectY = selectY + 1
			}
			if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up){
				selectY = selectY - 1
			}
			if keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right){
				selectX = selectX + 1
			}
			if keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left){
				selectX = selectX - 1
			}
			if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")){
				if global.playAs = 1{
					if selectX = 1 and selectY = 1{
						global.dippSpecial = 0
					}
					if selectX = 2 and selectY = 1 and global.dippSpringGet = 1{
						global.dippSpecial = 1
					}
					if selectX = 1 and selectY = 2 and global.dippGlideGet = 1{
						global.dippSpecial = 2
					}
					if selectX = 2 and selectY = 2 and global.dippDynaGet = 1{
						global.dippSpecial = 3
					}
				}
				if global.playAs = 2{
					if selectX = 1 and selectY = 1{
						global.gumSpecial = 0
					}
					if selectX = 2 and selectY = 1 and global.dippSpringGet = 1{
						global.gumSpecial = 1
					}
				}
			}
		}
		if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")){
			selected = 1
		}
		if keyboard_check_pressed(ord("O")) or keyboard_check_pressed(ord("X")){
			selected = -1
		}
	}
	else{
		active = -100
	}