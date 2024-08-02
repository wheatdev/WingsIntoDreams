if global.paused = -1{
	if global.bossHelp1 = 0{
		y = y + global.mechanism
		if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1)) and place_empty(x-64,y,Ground) and place_empty(x+64,y,Ground){
			rotate = rotate - 1		
		}
		if (keyboard_check_pressed(ord("O")) or keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face3)) and place_empty(x+64,y,Ground) and place_empty(x-64,y,Ground){
			rotate = rotate + 1		
		}
		if rotate > 4{
			rotate = 1
		}
		if rotate < 1{
			rotate = 4	
		}
		if rotate = 1{
			Block37L.x = x - 64
			Block37L.y = y
			Block37R.x = x + 64
			Block37R.y = y
			Block37U.x = x
			Block37U.y = y - 64
		}
		if rotate = 2{
			Block37L.x = x 
			Block37L.y = y + 64
			Block37R.x = x 
			Block37R.y = y - 64
			Block37U.x = x - 64
			Block37U.y = y
		}
		if rotate = 3{
			Block37L.x = x + 64
			Block37L.y = y
			Block37R.x = x -64
			Block37R.y = y
			Block37U.x = x
			Block37U.y = y + 64
		}
		if rotate = 4{
			Block37L.x = x 
			Block37L.y = y - 64
			Block37R.x = x 
			Block37R.y = y + 64
			Block37U.x = x +64
			Block37U.y = y
		}
		if (keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_padr)){
			if rotate = 2 and place_empty(x+64,y,Ground){
				x = x + 64	
			}
			else{
				if place_empty(x+128,y,Ground){
					x =x + 64	
				}
			}
		}
		if (keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left) or gamepad_button_check_pressed(0,gp_padl)){
			if rotate = 4 and place_empty(x-64,y,Ground){
				x = x - 64	
			}
			else{
				if place_empty(x-128,y,Ground){
					x =x - 64	
				}
			}
		}
		if place_meeting(x,y+64,Ground){
			global.bossHelp1 = 1
		}	
	}
	if global.bossHelp1 = 1{
		if value = 0{
			instance_create_depth(x,y,0,Block37Val0)
		}
		if value = 1{
			instance_create_depth(x,y,0,Block37Val1)
		}
		if value = 2{
			instance_create_depth(x,y,0,Block37Val2)
		}
		if value = 3{
			instance_create_depth(x,y,0,Block37Val3)
		}
		if value = 4{
			instance_create_depth(x,y,0,Block37Val4)
		}
		if value = 5{
			instance_create_depth(x,y,0,Block37Val5)
		}
		if value = 6{
			instance_create_depth(x,y,0,Block37Val6)
		}
		if value = 7{
			instance_create_depth(x,y,0,Block37Val7)
		}
		instance_destroy()
	}
}