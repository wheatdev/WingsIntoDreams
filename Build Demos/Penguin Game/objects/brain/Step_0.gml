if room = title{
	if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
		room_goto(testRoom)
	}
}
if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
	global.paused = global.paused * -1
}
if keyboard_check(ord("A")) or keyboard_check(vk_left){
	global.lastPressed = -1
}
if keyboard_check(ord("D")) or keyboard_check(vk_right){
	global.lastPressed =1
}