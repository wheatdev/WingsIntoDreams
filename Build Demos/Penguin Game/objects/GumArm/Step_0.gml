if global.gumHealth > 0 and global.playAs = 2 and (global.cameraActive =1 or global.cameraActive = -2) {
	x = Gum.x
	y = Gum.y + Goffset
	image_xscale = global.lastPressed
	image_yscale = global.eGravity/10
	if global.allowDamage > 1{
		image_alpha = .5
	}
	else{
		image_alpha = 1
	}
	if keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_left){
		shootAngle = 0	
	}
	if keyboard_check(ord("W")) or keyboard_check(vk_up){
		shootAngle = 1
		if keyboard_check_released(ord("W")) or keyboard_check_released(vk_up){
			shootAngle = 0
		}
	}
	if keyboard_check(ord("S")) or keyboard_check(vk_down){
		shootAngle = 2
		if keyboard_check_released(ord("S")) or keyboard_check_released(vk_down){
			shootAngle = 0
		}
	}
	if (keyboard_check(ord("P")) or keyboard_check(ord("C")) or gamepad_button_check(0,gp_face2)) and global.specialMeter > 0 and global.gumSpecial = 1{
		Goffset = 40
	}
	else{
		Goffset = 0	
	}
	if shootAngle = 0{
		if global.lastPressed = -1{
			image_angle = -90
		}
		if global.lastPressed = 1{
			image_angle = 90
		}
	}
	if shootAngle = 1{
		image_angle = 180	
	}
	if shootAngle = 2{
		image_angle = 0	
	}
	if keyboard_check_pressed(ord("O")) or keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face3){
		instance_create_depth(x,y,0,gumShoot)
	}
}
else{
	instance_destroy()
}
