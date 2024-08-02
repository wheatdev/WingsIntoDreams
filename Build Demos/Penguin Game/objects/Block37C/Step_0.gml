if global.paused = -1{
	y = y + global.mechanism
	if (keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A")) or gamepad_button_check_pressed(0,gp_padl)){
		if global.bossHelp1 = 4 and place_empty(x-64,y,Ground){
			x = x - 64	
		}
		else{
			if place_empty(x-128,y,Ground){
				x = x -64
			}
		}		
	}
	if (keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(0,gp_padr)){
		if global.bossHelp1 = 2 and place_empty(x+64,y,Ground){
			x = x + 64	
		}
		else{
			if place_empty(x+128,y,Ground){
				x = x +64
			}
		}		
	}
	if (keyboard_check(vk_down) or keyboard_check(ord("S")) or gamepad_button_check(0,gp_padd)) and place_empty(x,y+(global.mechanism*2),Ground){
		y = y + global.mechanism
	}
	if place_meeting(x,y+(global.mechanism*2),Ground){
		global.bossHelp2 = 1
	}
	if global.bossHelp2 = 1{
		instance_create_depth(x,y,0,Block37Val0)
		instance_destroy()
	}
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1)){
		global.bossHelp1 = global.bossHelp1 - 1
	}
	if (keyboard_check_pressed(ord("O")) or keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face3)){
		global.bossHelp1 = global.bossHelp1 + 1
	}
}