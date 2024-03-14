if place_meeting(x,y,DippSword) and springOut = 0{
	springOut = 1
	instance_create_depth(x,y- 50,-1,springSpecial)
	if keyboard_check(ord("S")) or keyboard_check(vk_down){
		global.pBounce = 20
	}
}
if springOut = 1{
	sprite_index = chestopen
}