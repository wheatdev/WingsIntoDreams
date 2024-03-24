if place_meeting(x,y,DippSword) and donValChest = 0{
	donValChest = 1
	instance_create_depth(x,y- 50,-1,donVal50)
	if keyboard_check(ord("S")) or keyboard_check(vk_down){
		global.pBounce = 20
	}
}
if donValChest = 1{
	sprite_index = chestopen
}