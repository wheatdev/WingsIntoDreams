	if global.paused = 1{
		visible = true
	}
	else{
		visible = false
		selected = -1
	}
	x = pauseMenu.x
	y = pauseMenu.y - (100 + active)

	if global.pauseX = 3{
		active = -80
		if selected = 1{
			if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd){
				selectY = selectY + 1
			}
			if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu){
				selectY = selectY - 1
			}
		}
		if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1){
			if selected = -1{
				selected = 1
			}
			else{
				if global.upgrade > 0{
					if global.playAs = 1{
						if selectY = 1{
							global.dippHealth = global.dippHealth + 5
							global.dippHealthMax = global.dippHealthMax + 5
							global.upgrade = global.upgrade - 1
						}
						if selectY = 2{
							global.dippAttack = global.dippAttack + 1
							global.upgrade = global.upgrade - 1
						}
						if selectY = 3{
							global.dippSpeed = global.dippSpeed + 1
							global.upgrade = global.upgrade - 1
						}
					}
					if global.playAs = 2{
						if selectY = 1{
							global.gumHealth = global.gumHealth + 5
							global.gumHealthMax = global.gumHealthMax + 5
							global.upgrade = global.upgrade - 1
						}
						if selectY = 2{
							global.gumAttack = global.gumAttack + 1
							global.upgrade = global.upgrade - 1
						}
						if selectY = 3{
							global.gumSpeed = global.gumSpeed + 1
							global.upgrade = global.upgrade - 1
						}
					}
				}
			}
		}
		if keyboard_check_pressed(ord("O")) or keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face3){
			selected = -1
		}
		if selectY > 3{
			selectY = 1
		}
		if selectY < 1{
			selectY = 3
		}
	}
	else{
		active = -100
	}