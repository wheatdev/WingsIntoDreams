timer = timer + 1
view_camera[0] = camera_create_view(mapPlayer.x - 683, mapPlayer.y - 484, 1366, 768, 0, Dipp, 5, 5, -1, -1)
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
if levelGoTo = 2{
	x = 1152
	y = 1216
	if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up){
		levelGoTo = 1
	}
	if (keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left)){
		levelGoTo = 3
	}
	if (keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)) and global.minesUnlock > 0{
		levelGoTo = 6
	}
	if (keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right)) and global.storyProgress > 3{
		levelGoTo = 4
	}
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z"))) and timer > 30{
		room_goto(Shop1)	
	}
}
if levelGoTo = 1{
	x = 1120
	y = 672
	global.playerStartX = 120
	global.playerStartY = 563
	global.lastPressed = 1
	if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down){
		levelGoTo = 2
	}
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z"))) and timer > 30{
		room_goto(springFactory)	
	}
}
if levelGoTo = 3{
	x = 1056
	y = 1312
	if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up){
		levelGoTo = 2
	}
	if keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right){
		levelGoTo = 2
	}
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z"))) and timer > 30{
		room_goto(DippHouse)	
	}
}
if levelGoTo = 4{
	x = 1536
	y = 992
	global.playerStartX = 832
	global.playerStartY = 704
	global.lastPressed = 1
	if keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left){
		levelGoTo = 2
	}
	if (keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)) and global.storyProgress > 3{
		levelGoTo = 5
	}
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z"))) and timer > 30{
		room_goto(conicCaves)	
	}
}
if levelGoTo = 5{
	x = 1632
	y = 1600
	global.lastPressed = -1
	if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up){
		levelGoTo = 4
	}
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z"))) and timer > 30{
		room_goto(conCaveTemple)	
	}
}
if levelGoTo = 6{
	x = 0
	y = 0
	global.lastPressed = 1
	if global.minesUnlock = 1{
		global.playerStartX = 640
		global.playerStartY = -1040
	}
	if global.minesUnlock = 2{
		
	}
	if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up){
		levelGoTo = 2
	}
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z"))) and timer > 30{
		room_goto(mineDownUnder)	
	}
}