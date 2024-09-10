if place_meeting(x,y,DippSword) and donValChest = 0{
	donValChest = 1
	instance_create_depth(x,y- 50,-1,donVal50)
	if keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd){
		global.pBounce = 20
	}
}
if place_meeting(x,y,Player) and(keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu)) and donValChest= 0{
	donValChest = 1
	instance_create_depth(x,y-50,-1,donVal50)
}
if donValChest = 1{
	sprite_index = chestopen1
}