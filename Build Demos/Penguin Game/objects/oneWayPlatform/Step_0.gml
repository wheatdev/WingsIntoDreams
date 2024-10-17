if global.cameraActive = 1{
	if Player.y < (y-64){
		sprite_index = test0
	}
	else{
		sprite_index = noCollision
	}
	if (place_meeting(x,y-(global.eGravity * 2),Player) and (keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd))){
		sprite_index = noCollision
	}
	if place_meeting(x,y,Player){
		Player.y = Player.y - (global.eGravity * 2)
	}
}