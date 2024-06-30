if words = "BREAK"{
	global.talking = 0
}
if type = 2{
	if cindex = 0{
		words = "Test Message"
		words2 = ""
		words3 = ""
	}
}	
if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z"))) and global.talking =1 {
	cindex = cindex + 1
}

if keyboard_check(vk_escape){
	game_end()
}
if keyboard_check_pressed(ord("F")){
	global.fullscreen = global.fullscreen * -1
}
if global.fullscreen = 1{
	window_set_fullscreen(true)
}
if global.fullscreen = -1{
	window_set_fullscreen(false)
}
