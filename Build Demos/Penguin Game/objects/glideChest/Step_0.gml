if place_meeting(x,y,DippSword) and glideOut = 0{
	glideOut = 1
	instance_create_depth(x,y-50,-1,glideSpecial)
	if keyboard_check(ord("S")) or keyboard_check(vk_down){
		global.pBounce = 20
	}
}
if place_meeting(x,y,Player) and(keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)) and glideOut = 0{
	glideOut = 1
	instance_create_depth(x,y-50,-1,glideSpecial)
}
if glideOut = 1{
	sprite_index = chestopen
}