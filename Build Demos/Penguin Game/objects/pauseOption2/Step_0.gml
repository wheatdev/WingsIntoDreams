if global.paused = 1{
	visible = true
	x = pauseMenu.x
	y = pauseMenu.y - (100 + active)

	if global.pauseX = 2{
		active = -80
		image_alpha = 1
			if selected = 1{
			if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd){
				selectY = selectY + 1
			}
			if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu){
				selectY = selectY - 1
			}
			if keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_padr){
				selectX = selectX + 1
			}
			if keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left) or gamepad_button_check_pressed(0,gp_padl){
				selectX = selectX - 1
			}
			if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1){
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
					if selectX = 3 and selectY = 1 and global.dippDynaGet = 1{
						global.dippSpecial = 3
					}
					if selectX = 2 and selectY = 2 and global.dippSnowballGet = 1{
						global.dippSpecial = 4
					}
					if selectX = 3 and selectY = 2 and global.dippCloudGet = 1{
						global.dippSpecial = 5	
					}
					if selectX = 1 and selectY = 3 and global.dippIceGet = 1{
						global.dippSpecial = 6
					}
					if selectX = 2 and selectY = 3 and global.dippFireGet = 1{
						global.dippSpecial = 7
					}
					if selectX = 3 and selectY = 3 and ((global.dippSnowballGet = 1 or global.dippIceGet = 1) and global.dippFireGet = 1){
						global.dippSpecial = 8	
					}
				}
				if global.playAs = 2{
					if selectX = 1 and selectY = 1{
						global.gumSpecial = 0
					}
					if selectX = 2 and selectY = 1{
						global.gumSpecial = 1
					}
						if selectX = 3 and selectY = 1{
						global.gumSpecial = 2
					}
				}
			}
		}
		if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1){
			selected = 1
		}
		if keyboard_check_pressed(ord("O")) or keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face3){
			selected = -1
		}
	}
	else{
		active = -100
	}
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
			selectX = 3
			selectY = 1
		}
		if global.dippSpecial = 4{
			selectX = 2
			selectY = 2
		}
		if global.dippSpecial = 5{
			selectX = 3
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
		if global.gumSpecial = 2{
			selectX = 3
			selectY = 1
		}
	}
}	
