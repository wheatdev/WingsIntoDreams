if global.cameraActive = 1{	
	if global.paused = 1{
		visible = true
	}
	else{
		visible = false
	}
	x = Player.x
	y = Player.y - 100

	if global.paused = 1{
		if selected = -1{
			if keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(0,gp_padr){
				global.pauseX = global.pauseX + 1
			}
			if keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A")) or gamepad_button_check_pressed(0,gp_padl){
				global.pauseX = global.pauseX - 1
			}
		}
		if global.pauseX > 3{
			global.pauseX = 1
		}
		if global.pauseX < 1{
			global.pauseX = 3
		}
		if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1){
			selected = 1
		}
		if keyboard_check_pressed(ord("O")) or keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face3){
			selected = -1
		}
	}
}
if global.cameraActive = -2 and type = 1{
	x = megamanBarrier2.x + 704	
	y = megamanBarrier2.y + 128
		if global.paused = 1{
		visible = true
	}
	else{
		visible = false
	}
	if global.paused = 1{
		if selected = -1{
			if keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(0,gp_padr){
				global.pauseX = global.pauseX + 1
			}
			if keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A")) or gamepad_button_check_pressed(0,gp_padl){
				global.pauseX = global.pauseX - 1
			}
		}
		if global.pauseX > 3{
			global.pauseX = 1
		}
		if global.pauseX < 1{
			global.pauseX = 3
		}
		if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1){
			selected = 1
		}
		if keyboard_check_pressed(ord("O")) or keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face3){
			selected = -1
		}
	}
}