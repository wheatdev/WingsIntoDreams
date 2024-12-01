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
		if keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")) or gamepad_button_check_pressed(0,gp_padu){
			selectY = selectY - 1	
		}
		if keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")) or gamepad_button_check_pressed(0,gp_padd) {
			selectY = selectY + 1	
		}
		if keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(0,gp_padl) or gamepad_button_check_pressed(0,gp_padr){
			selectX = selectX * -1	
		}
		if selectY < 0{
			selectY = 0
		}
		if selectY > 3{
			selectY = 3	
		}
		if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1){
			if selectY = 1 and selectX = -1{
				if global.escapeRope = 1{
					global.playerStartX = 896
					global.playerStartY = 20
					global.paused = global.paused * -1
					global.escapeRope = 0
					global.cutsceneTimer = 0
					room_goto(HUB1)
				}
			}
			if selectY = 3 and selectX = -1{
				global.specialMeter = global.specialMax
				global.dippHealth = global.dippHealthMax
				global.gumHealth = global.gumHealthMax
				global.earnestHealth = global.earnestHealthMax
				global.leftovers = 0
			}
		}
	}
	