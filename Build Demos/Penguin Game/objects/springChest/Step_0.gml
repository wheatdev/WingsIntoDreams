if place_meeting(x,y,DippSword) and springOut = 0{
	springOut = 1
	instance_create_depth(x,y- 50,-1,springSpecial)
	if keyboard_check(ord("S")) or keyboard_check(vk_down){
		global.pBounce = 20
	}
}
if place_meeting(x,y,Player) and(keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)) and springOut = 0{
	springOut = 1
	instance_create_depth(x,y-50,-1,springSpecial)
}
if springOut = 1{
	sprite_index = chestopen
}